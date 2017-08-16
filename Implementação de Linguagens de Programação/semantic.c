
#include <stdio.h>
#include <stdarg.h>
#include "semantic.h"
#include "table.h"
#include "util.h"
#include "type.h"
#include "temp.h"

static S_table _tabelaVar;
static S_table _tabelaFunciton;
static S_table _tabelaType;

static string tempResultFunction;

static char tipos[][12] = {
   "ty_nil", "ty_int", "ty_string", 
   "ty_array", "ty_name", "ty_void", "ty_bool", "ty_func", "ty_function", "ty_var"
};

typedef struct expr_type_s expr_type_t;

struct expr_type_s{
   Ty_ty type;
};

static Ty_ty lookup_type(S_symbol name, int pos)
{
    Ty_ty type = S_look(_tabelaType, name);
    if (type){
        type = Ty_Actual(type);
    }
    else
        EM_error(pos, "tipo nao definido '%s'", S_name(name));
    return type;
}

static expr_type_t expr_type(Ty_ty type){

   expr_type_t result;
   result.type = type;
   return result;
}

static void trans_decl(A_dec decl);
static expr_type_t trans_expr(A_exp expr );
static expr_type_t trans_var(A_var var);
static Ty_ty trans_type(A_ty type);

static expr_type_t trans_simple_var(A_var var){

  Ty_ty entry = S_look(_tabelaVar, var->u.simple);

  if (!entry){
    EM_error(var->pos, "variavel indefinido: %s", S_name(var->u.simple));
    return expr_type(Ty_Int());
  }
  else if (entry->kind == Ty_function){
    Ty_fieldList p;
    Ty_tyList tl, aux;
    for (p = entry->u.function.params; p; p = p->tail){
      
      if (tl)
      {
        aux->tail = Ty_TyList(p->head->ty->u.name.ty, NULL);
        aux = aux->tail;
      }
      else
        tl = aux = Ty_TyList(p->head->ty->u.name.ty, NULL);
    }
    return expr_type(Ty_Func(tl, entry->u.function.result));
  }

  if (entry->u.name.sym)
    return expr_type(lookup_type(entry->u.name.sym, var->pos));
  else
    return expr_type(entry);  
}



static expr_type_t trans_sub_var(A_var var)
{
 
  expr_type_t et = trans_var(var->u.subscript.var);
  expr_type_t sub = trans_expr(var->u.subscript.exp);

  if (et.type->kind != Ty_array)
  {
      EM_error(var->pos, "experado variavel do tipo array");
      return expr_type(Ty_Int());
  }
  if (sub.type->kind != Ty_int)
      EM_error(var->pos, "experado tipo inteiro");
  return expr_type(Ty_Actual(et.type->u.array));
}

static expr_type_t trans_var(A_var var){

  switch( var->kind ){

    case A_simpleVar:
      return trans_simple_var(var);
    
    case A_subscriptVar:
      return trans_sub_var(var);
 }
}

static void trans_var_decl(A_vardec decl){

  expr_type_t init = trans_expr(decl->init);

  Ty_ty type = init.type;

  Ty_ty entry = S_look(_tabelaVar, decl->var);

  if (entry){
    EM_error(decl->pos, "variavel %s ja definido", S_name(decl->var));
    return;
  }

  if (decl->typ){
   
    type = lookup_type(decl->typ->u.name, decl->pos); 

    if (!type)
      type = Ty_Void();

    if (init.type != Ty_Nil() && type != init.type)
      EM_error(decl->pos, "inicializado com tipo incorreto");
  }

  S_enter(_tabelaVar, decl->var, Ty_Var(type, decl->typ->u.name));  
  
}

static void trans_vardeclist_decl(A_vardecList declist)
{
  A_vardecList p;
  for (p = declist; p; p = p->tail)
  {
      trans_var_decl(p->head);
  }
}



static expr_type_t trans_assign_expr(A_exp expr)
{
    expr_type_t var = trans_var(expr->u.assign.var);
    expr_type_t et = trans_expr(expr->u.assign.exp);

    if (!Ty_Match(var.type, et.type))
        EM_error(expr->pos, "atribuicao com tipos incompativeis");

    return expr_type(Ty_Void());
}

static Ty_fieldList formal_type_list(A_fieldList params, int pos)
{
  Ty_fieldList q = NULL, r = NULL;
  A_fieldList p;
  
  for (p = params; p; p = p->tail)
  {
    A_field field = p->head;
    Ty_ty type = lookup_type(field->typ->u.name, pos);
    if (!type)
        type = Ty_Int();
    if (r)
    {
        r->tail = Ty_FieldList(Ty_Field(field->name, Ty_Var(type, field->typ->u.name)), NULL);
        r = r->tail;
    }
    else
        q = r = Ty_FieldList(Ty_Field(field->name, Ty_Var(type, field->typ->u.name)), NULL);
  }
  return q;
}

static void trans_funcs_decl(A_dec decl)
{
  Ty_ty entry = S_look(_tabelaFunciton, decl->u.function.name);  

  if (entry){
    EM_error(decl->pos, "funcao %s ja definido", S_name(decl->u.function.name));
    return;
  }

  Ty_fieldList params = formal_type_list(decl->u.function.params, decl->pos);
  Ty_ty result;

  if (decl->u.function.result)
  {
      result = lookup_type(decl->u.function.result->u.name, decl->pos);
      if (!result)
          result = Ty_Void();
  }
  else
      result = Ty_Void();

  S_enter(_tabelaFunciton, decl->u.function.name, Ty_Function(decl->u.function.name, params, result));

  S_beginScope(_tabelaVar);

  for (; params; params = params->tail)
  {
    S_enter(_tabelaVar, params->head->name, params->head->ty);
  }

  expr_type_t result_body = trans_expr(decl->u.function.body);
  
  if (result != Ty_Void())
    if (!Ty_Match(result_body.type, result))
      EM_error(decl->pos, "O retorno da funcao esta incorreto");
  S_endScope(_tabelaVar);
  
}

static void trans_decl(A_dec decl){

  switch(decl->kind){

    case A_varDec:
       trans_vardeclist_decl(decl->u.var);
       break;

    case A_functionDec:
       trans_funcs_decl(decl);
       break;
   }
}

static expr_type_t trans_decs_expr(A_exp expr){

  expr_type_t result;
  A_decList p;
  

  for (p = expr->u.decs.decs; p; p = p->tail)
     trans_decl(p->head);
  ResetTemps();

  return result;
}

static expr_type_t trans_return_expr(A_exp expr){

  return trans_expr(expr->u.returnn);
}

static expr_type_t trans_seq_expr(A_exp expr){

  A_vardecList v;
  for (v = expr->u.seq.varDecs; v; v = v->tail)
  {
      trans_var_decl(v->head);
  }

  A_expList p;
  A_expList stmts = NULL, next = NULL;
  for (p = expr->u.seq.exps; p; p = p->tail){
    expr_type_t et = trans_expr(p->head);

    if (!p->tail)
      return expr_type(et.type);
   }
   return expr_type(Ty_Void());

}

static expr_type_t trans_nil_expr(A_exp exp)
{
  return expr_type(Ty_Nil());
}

static expr_type_t trans_void_expr(A_exp exp)
{
  return expr_type(Ty_Void());
}

static expr_type_t trans_num_expr(A_exp exp)
{
  return expr_type(Ty_Int());
}

static expr_type_t trans_bool_expr(A_exp exp)
{
  return expr_type(Ty_Bool());
}

static expr_type_t trans_string_expr(A_exp exp)
{

  return expr_type(Ty_String());
}

static expr_type_t trans_call_expr(A_exp expr)
{


    Ty_ty entry = S_look(_tabelaFunciton, expr->u.call.func);
    A_expList l_args;
    Ty_fieldList params;
    int i;

    if (!entry)
    {
        EM_error(expr->pos, "funcao nao definida '%s'", S_name(expr->u.call.func));
        return expr_type(Ty_Int());
    }


    for (params = entry->u.function.params, l_args = expr->u.call.args, i = 1;
         params && l_args;
         params = params->tail, l_args = l_args->tail, i++)
    {
        expr_type_t et = trans_expr(l_args->head);
        if (!Ty_Match(lookup_type(params->head->ty->u.name.sym, expr->pos), et.type))
            EM_error(expr->pos, "parametro %d da funcao '%s' passado com tipo incorreto", i, S_name(expr->u.call.func));

    }

    if (params)
        EM_error(expr->pos, "esperado mais parametros");
    else if (l_args)
        EM_error(expr->pos, "esperado menos parametros");

    return expr_type(Ty_Actual(entry->u.function.result));    
}

static expr_type_t trans_op_expr(A_exp expr)
{
    A_oper op = expr->u.op.oper;
    
    expr_type_t left = trans_expr(expr->u.op.left);
    expr_type_t right = trans_expr(expr->u.op.right);

    string sleft, sright;

    Ty_ty ty_left = left.type->kind == Ty_var ? left.type->u.name.ty : left.type;
    Ty_ty ty_right = right.type->kind == Ty_var ? right.type->u.name.ty : right.type;

    switch (op) {
        case A_plusOp:
        case A_minusOp:
        case A_timesOp:
        case A_divideOp:

            if (!Ty_Match(ty_left, ty_right))
              EM_error(expr->pos, "operacao com tipos incompativeis");

            return expr_type(Ty_Int());

        case A_eqOp:
        case A_neqOp: {
            if (!Ty_Match(ty_left, ty_right))
                EM_error(expr->pos, "comparacao de tipos incompativeis");
            return expr_type(Ty_Int());
        }

        case A_ltOp:
        case A_leOp:
        case A_gtOp:
        case A_geOp: {
            if (!Ty_Match(ty_left, ty_right))
                EM_error(expr->pos, "comparacao de tipos incompativeis");
            if (ty_left->kind != Ty_int && ty_left->kind != Ty_string)
                EM_error(expr->pos, "os tipos dos operandos deve ser string ou int");

            return expr_type(left.type);
        }
    }

    assert(0);
}



static expr_type_t trans_if_expr(A_exp expr)
{
  expr_type_t cond = trans_expr(expr->u.iff.test);
  expr_type_t then = trans_expr(expr->u.iff.then);

  if (!Ty_Match(cond.type, Ty_Bool()))
      EM_error(expr->pos, "esperado um valor booleano");
  if (expr->u.iff.elsee)
  {
      return expr_type(then.type);
  }
  return expr_type(Ty_Void());
}

static expr_type_t trans_array_expr(A_exp expr)
{

  Ty_ty type = lookup_type(expr->u.array.typ, expr->pos);
  expr_type_t size = trans_expr(expr->u.array.size);
  expr_type_t init = trans_expr(expr->u.array.init);

  if (!type)
      return expr_type(Ty_Int());
  if (type->kind != Ty_array)
      EM_error(expr->pos, "'%s' nao e um tipo array.", S_name(expr->u.array.typ));
  if (size.type->kind != Ty_int)
      EM_error(expr->pos, "O tamanho do array deve ser do tipo INT.");
  if (!Ty_Match(type->u.array, init.type))
      EM_error(expr->pos, "inicializado com tipo incorreto.");
  return expr_type(type);
}

static expr_type_t trans_expr(A_exp exp){


   switch( exp->kind ){
      
      case A_varExp:
        return trans_var(exp->u.var);

      case A_nilExp:
	      return trans_nil_expr(exp);

      case A_intExp:
        return trans_num_expr(exp);

      case A_voidExp:
        return trans_void_expr(exp);

      case A_boolExp:
        return trans_bool_expr(exp);

      case A_stringExp:
         return trans_string_expr(exp);

      case A_returnExp:
        return trans_return_expr(exp);

      case A_callExp:
        return trans_call_expr(exp);

      case A_opExp:
        return trans_op_expr(exp);

      case A_seqExp:
         return trans_seq_expr(exp);

      case A_ifExp:
         return trans_if_expr(exp);

      case A_decsExp:
         return trans_decs_expr(exp);

      case A_assignExp:
        return trans_assign_expr(exp);      
   }
}

void analizador_semantico(A_exp prog)
{
  _tabelaVar = S_empty();
  _tabelaType = S_empty();
  _tabelaFunciton = S_empty();

  S_beginScope(_tabelaVar);
  S_beginScope(_tabelaType);
  S_beginScope(_tabelaFunciton);

  S_enter(_tabelaType, S_Symbol("string"), Ty_String());
  S_enter(_tabelaType, S_Symbol("int"), Ty_Int());
  S_enter(_tabelaType, S_Symbol("bool"), Ty_Bool());
  S_enter(_tabelaType, S_Symbol("void"), Ty_Void());
  S_enter(_tabelaFunciton, S_Symbol("read"), Ty_Function(NULL, NULL, NULL));
  S_enter(_tabelaFunciton, S_Symbol("write"), Ty_Function(NULL, NULL, NULL));
  
  trans_expr(prog);

  S_endScope(_tabelaVar);
  S_endScope(_tabelaType);
  S_endScope(_tabelaFunciton);
}
