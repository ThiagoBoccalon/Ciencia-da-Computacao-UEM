%{
#include <stdio.h>
#include "absyn.h"
#include "errormsg.h"

A_exp absyn_root;

%}


%union {
	int ival;
	char* sval;

	struct A_var_ *A_var;
	struct A_exp_ *A_exp;
	struct A_dec_ *A_dec;
	struct A_ty_ *A_ty;

	struct A_tyList_ *A_tyList;
	struct A_decList_ *A_decList;
	struct A_expList_ *A_expList;
	struct A_field_ *A_field;
	struct A_fieldList_ *A_fieldList;
	struct A_fundec_ *A_fundec;
	struct A_fundecList_ *A_fundecList;
	struct A_namety_ *A_namety;
	struct A_nametyList_ *A_nametyList;
	struct A_efield_ *A_efield;
  struct A_efieldList_ *A_efieldList;
  struct A_vardecList_ *A_vardecList;
	struct A_vardec_ *A_vardec;
}

%token <sval> ID STRING T_STRING T_BOOL T_INT READ WRITE
%token <ival> INT FALSE TRUE
%token LPAREN RPAREN LBRACK RBRACK LBRACE RBRACE COMMA SEMICOLON COLON
%token PLUS MINUS TIMES DIVIDE MOD
%token EQUAL NEQUAL GT GE LT LE
%token OR AND NOT
%token ASSIGN ASSIGN_PLUS ASSIGN_MINUS ASSIGN_TIMES ASSIGN_DIVIDE ASSIGN_MOD
%token IF ELSE WHILE FOR BREAK RETURN
%token IF_TERNARIO 

%type <A_var> /*varSpecSeq varSpec */ var 
%type <A_exp> pri_exp or_exp and_exp rel_exp add_exp times_exp mod_exp forStmt whileStmt ifStmt assign block exp stmt readStmt writeStmt literal subCall breakStmt returnStmt
%type <A_decList> decSeq
%type <A_dec> dec
%type <A_field> param 
%type <A_fieldList> paramSeq paramList
%type <A_expList> expList expSeq stmtList
%type <A_vardec> varDec
%type <A_vardecList> varDecList 
%type <A_ty> type

/* operador ternario */
%right NOT

/* operadores logico */
%left OR
%left AND

/* operadores relacional */
%left EQUAL NEQUAL
%left GT LT GE LE

/* operadores */
%left PLUS MINUS
%left TIMES DIVIDE MOD

/* operador ternario */
%right IF_TERNARIO COLON

%start program

%%

program : decSeq                                                                          { absyn_root=A_DecsExp(EM_tokPos, $1); }
;

decSeq : dec decSeq                                                                       { $$=A_DecList($1, $2); }
       | dec                                                                              { $$=A_DecList($1, NULL); }
;

dec : varDec                                                                              { $$=A_VariavelDec(EM_tokPos, A_VardecList($1, NULL)); }
    | ID LPAREN paramList RPAREN LBRACE block RBRACE                                      { $$=A_FunctionDec(EM_tokPos, S_Symbol($1), $3, A_NameTy(EM_tokPos, S_Symbol("void")), $6); }
    | type ID LPAREN paramList RPAREN LBRACE block RBRACE                                 { $$=A_FunctionDec(EM_tokPos, S_Symbol($2), $4, $1, $7); }
;

varDecList : varDec varDecList                                                            { $$=A_VardecList($1, $2); }
           |                                                                              { $$=NULL; }
;

varDec : type ID SEMICOLON                                                                 { $$=A_Vardec(EM_tokPos, S_Symbol($2), $1, A_NilExp(EM_tokPos)); } 
       | type ID ASSIGN literal SEMICOLON                                                  { $$=A_Vardec(EM_tokPos, S_Symbol($2), $1, $4); } 
       | type ID LBRACK INT RBRACK SEMICOLON                                               { $$=A_Vardec(EM_tokPos, S_Symbol($2), $1, A_NilExp(EM_tokPos)); } 

/*
varDec : type varSpecSeq SEMICOLON                                                        {  } 
;

varSpecSeq : varSpec comma_varSpec                                                        {  }
;

comma_varSpec :                                                                           {  }
              | COMMA varSpecSeq                                                          {  }

varSpec : ID                                                                              {  }
        | ID ASSIGN literal                                                               {  }
        | ID LBRACK INT RBRACK                                                            {  }
        | ID LBRACK INT RBRACK ASSIGN LBRACE literalSeq RBRACE                            {  }
;

literalSeq : literal literalSeq                                                           {  }
           | literal                                                                      {  }
;
*/
type : T_INT                                                                              { $$=A_NameTy(EM_tokPos, S_Symbol($1)); }
     | T_STRING                                                                           { $$=A_NameTy(EM_tokPos, S_Symbol($1)); }
     | T_BOOL                                                                             { $$=A_NameTy(EM_tokPos, S_Symbol($1)); }
;

literal : INT                                                                             { $$=A_IntExp(EM_tokPos, $1); }
        | STRING                                                                          { $$=A_StringExp(EM_tokPos, $1); }
        | TRUE                                                                            { $$=A_BoolExp(EM_tokPos, $1); }
        | FALSE                                                                           { $$=A_BoolExp(EM_tokPos, $1); }
;

paramList : paramSeq                                                                      { $$=$1; }
          |                                                                               { $$=NULL; }
;

paramSeq : param COMMA paramSeq                                                           { $$=A_FieldList($1, $3); }
         | param                                                                          { $$=A_FieldList($1, NULL); }
;

param : type ID                                                                           { $$=A_Field(EM_tokPos, S_Symbol($2), $1); }
      | type ID LBRACK RBRACK                                                             { $$=A_Field(EM_tokPos, S_Symbol($2), $1); }
;

block : varDecList stmtList                                                               { $$=A_SeqExp(EM_tokPos, $1, $2); }
;


stmtList : stmt stmtList                                                                  { $$=A_ExpList($1, $2); }
         |                                                                                { $$=NULL; }
;

exp : or_exp                                                                              { $$=$1; }
;

pri_exp : literal                                                                         { $$=$1; }
        | MINUS pri_exp                                                                   { $$=A_OpExp(EM_tokPos, A_minusOp, A_IntExp(EM_tokPos, 0), $2); }
        | pri_exp IF_TERNARIO pri_exp COLON pri_exp                                       {  }
        | subCall                                                                         { $$=$1; }
        | var                                                                             { $$=A_VarExp(EM_tokPos, $1); }
        | LPAREN exp RPAREN                                                               { $$=$2; }
        | NOT pri_exp                                                                     { $$=$$=A_OpExp(EM_tokPos, A_notOp, NULL, $2); }
;

or_exp: and_exp                                                                           { $$=$1; }
      | or_exp OR and_exp                                                                 { $$=A_OpExp(EM_tokPos, A_andOp, $1, $3); }
;

and_exp : rel_exp                                                                         { $$=$1; }
        | and_exp AND rel_exp                                                             { $$=A_OpExp(EM_tokPos, A_orOp, $1, $3); }
;

rel_exp : add_exp                                                                         { $$=$1; }
        | rel_exp GT add_exp                                                              { $$=A_OpExp(EM_tokPos, A_gtOp, $1, $3); }
        | rel_exp LT add_exp                                                              { $$=A_OpExp(EM_tokPos, A_ltOp, $1, $3); }
        | rel_exp NEQUAL add_exp                                                          { $$=A_OpExp(EM_tokPos, A_neqOp, $1, $3); }
        | rel_exp EQUAL add_exp                                                           { $$=A_OpExp(EM_tokPos, A_eqOp, $1, $3); }
        | rel_exp LE add_exp                                                              { $$=A_OpExp(EM_tokPos, A_leOp, $1, $3); }
        | rel_exp GE add_exp                                                              { $$=A_OpExp(EM_tokPos, A_geOp, $1, $3); }
;

add_exp : times_exp                                                                       { $$=$1; }
        | add_exp PLUS times_exp                                                          { $$=A_OpExp(EM_tokPos, A_plusOp, $1, $3); }
        | add_exp MINUS times_exp                                                         { $$=A_OpExp(EM_tokPos, A_minusOp, $1, $3); }
;

times_exp : mod_exp                                                                       { $$=$1; }
          | times_exp TIMES mod_exp                                                       { $$=A_OpExp(EM_tokPos, A_timesOp, $1, $3); }
          | times_exp DIVIDE mod_exp                                                      { $$=A_OpExp(EM_tokPos, A_divideOp, $1, $3); }
;

mod_exp : pri_exp                                                                         { $$=$1; }
        | mod_exp MOD pri_exp                                                             { $$=A_OpExp(EM_tokPos, A_modOp, $1, $3); }
;

stmt : ifStmt                                                                             { $$=$1; }
     | whileStmt                                                                          { $$=$1; }
     | forStmt                                                                            { $$=$1; }
     | breakStmt                                                                          { $$=$1; }
     | returnStmt                                                                         { $$=$1; }
     | readStmt                                                                           { $$=$1; }
     | writeStmt                                                                          { $$=$1; }
     | assign SEMICOLON                                                                   { $$=$1; }
     | subCall SEMICOLON                                                                  { $$=$1; }
;

ifStmt : IF LPAREN exp RPAREN LBRACE block RBRACE                                         { $$=A_IfExp(EM_tokPos, $3, $6, NULL); }
       | IF LPAREN exp RPAREN LBRACE block RBRACE ELSE LBRACE block RBRACE                { $$=A_IfExp(EM_tokPos, $3, $6, $10); }
;

whileStmt : WHILE LPAREN exp RPAREN LBRACE block RBRACE                                   { $$=A_WhileExp(EM_tokPos, $3, $6); }
;

forStmt : FOR LPAREN assign SEMICOLON exp SEMICOLON assign RPAREN LBRACE block RBRACE     { $$=A_ForExp(EM_tokPos, $3, $5, $7, $10); }
;

breakStmt : BREAK SEMICOLON                                                               { $$=A_BreakExp(EM_tokPos); }
;

readStmt : READ var SEMICOLON                                                             { $$=A_CallExp(EM_tokPos, S_Symbol($1), A_ExpList(A_VarExp(EM_tokPos, $2), NULL)); }
;

writeStmt : WRITE expList SEMICOLON                                                       { $$=A_CallExp(EM_tokPos, S_Symbol($1), $2); }
;

returnStmt : RETURN SEMICOLON                                                             { $$=A_ReturnExp(EM_tokPos, A_VoidExp(EM_tokPos)); }
           | RETURN exp SEMICOLON                                                         { $$=A_ReturnExp(EM_tokPos, $2); }
;

subCall : ID LPAREN expList RPAREN                                                        { $$=A_CallExp(EM_tokPos, S_Symbol($1), $3); }
;

assign : var ASSIGN exp                                                                   { $$=A_AssignExp(EM_tokPos, $1, $3); }
       | var ASSIGN_PLUS exp                                                              { $$=A_AssignExp(EM_tokPos, $1, A_OpExp(EM_tokPos, A_plusOp, A_VarExp(EM_tokPos, $1), $3)); }
       | var ASSIGN_MINUS exp                                                             { $$=A_AssignExp(EM_tokPos, $1, A_OpExp(EM_tokPos, A_minusOp, A_VarExp(EM_tokPos, $1), $3)); }
       | var ASSIGN_TIMES exp                                                             { $$=A_AssignExp(EM_tokPos, $1, A_OpExp(EM_tokPos, A_timesOp, A_VarExp(EM_tokPos, $1), $3)); }
       | var ASSIGN_DIVIDE exp                                                            { $$=A_AssignExp(EM_tokPos, $1, A_OpExp(EM_tokPos, A_divideOp, A_VarExp(EM_tokPos, $1), $3)); }
       | var ASSIGN_MOD exp                                                               { $$=A_AssignExp(EM_tokPos, $1, A_OpExp(EM_tokPos, A_modOp, A_VarExp(EM_tokPos, $1), $3)); }
;

var : ID                                                                                  { $$=A_SimpleVar(EM_tokPos, S_Symbol($1)); }
    | ID LBRACK exp RBRACK                                                                { $$=A_SubscriptVar(EM_tokPos, A_SimpleVar(EM_tokPos, S_Symbol($1)), $3); }
;

expList : expSeq                                                                          { $$=$1; }
        |                                                                                 { $$=NULL; }
;

expSeq : exp COMMA expSeq                                                                 { $$=A_ExpList($1, $3); }
       | exp                                                                              { $$=A_ExpList($1, NULL); }
;

%%

void yyerror(char *msg)
{
	EM_error(EM_tokPos, "%s", msg);
}
