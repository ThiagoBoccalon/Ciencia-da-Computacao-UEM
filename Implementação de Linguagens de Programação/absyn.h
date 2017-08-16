 
typedef struct S_symbol_ *S_symbol;
S_symbol S_Symbol(char*);

typedef int A_pos;

typedef struct A_var_ *A_var;
typedef struct A_exp_ *A_exp;
typedef struct A_dec_ *A_dec;
typedef struct A_ty_ *A_ty;

typedef struct A_tyList_ *A_tyList;
typedef struct A_decList_ *A_decList;
typedef struct A_expList_ *A_expList;
typedef struct A_field_ *A_field;
typedef struct A_fieldList_ *A_fieldList;
typedef struct A_vardec_ *A_vardec;
typedef struct A_vardecList_ *A_vardecList;
typedef struct A_efield_ *A_efield;
typedef struct A_efieldList_ *A_efieldList;

typedef enum {A_plusOp, A_minusOp, A_timesOp, A_divideOp, A_modOp,
	     A_eqOp, A_neqOp, A_ltOp, A_leOp, A_gtOp, A_geOp,
             A_andOp, A_orOp, A_notOp} A_oper;

struct A_var_
       {enum {A_simpleVar, A_fieldVar, A_subscriptVar} kind;
        A_pos pos;
	union {S_symbol simple;
	       struct {A_var var;
		       S_symbol sym;} field;
	       struct {A_var var;
		       A_exp exp;} subscript;
	     } u;
      };

struct A_exp_
      {enum {A_varExp, A_nilExp, A_intExp, A_boolExp, A_stringExp, A_callExp, A_voidExp,
	       A_opExp, A_recordExp, A_seqExp, A_assignExp, A_ifExp, A_returnExp,
	       A_whileExp, A_forExp, A_breakExp, A_decsExp, A_arrayExp} kind;
       A_pos pos;
       union {A_var var;
	      /* nil; - needs only the pos */
        int intt;
	      char booll;
        char* stringg;
	      A_exp returnn;
	      struct {S_symbol func; A_expList args;} call;
	      struct {A_oper oper; A_exp left; A_exp right;} op;
	      struct {S_symbol typ; A_efieldList fields;} record;
	      struct {A_vardecList varDecs; A_expList exps;} seq;
	      struct {A_var var; A_exp exp;} assign;
	      struct {A_exp test, then, elsee;} iff; /* elsee is optional */
	      struct {A_exp test, body;} whilee;
	      struct {A_exp assign, cond, inc, body; int escape;} forr;
	      /* breakk; - need only the pos */
	      struct {A_decList decs;} decs;
	      struct {S_symbol typ; A_exp size, init;} array;
	    } u;
     };

struct A_dec_ 
    { 
      enum {A_functionDec, A_varDec} kind;
      A_pos pos; 
      union {
        struct {S_symbol name; A_fieldList params; A_ty result; A_exp body;} function;
	      A_vardecList var;
	  } u;
   };

struct A_ty_ {enum {A_nameTy, A_recordTy, A_arrayTy, A_funcTy} kind;
	      A_pos pos;
	      union {S_symbol name;
		     A_fieldList record;
		     S_symbol array;
         struct { A_tyList params; A_ty result; } func;
		   } u;
	    };

/* Linked lists and nodes of lists */

struct A_field_ {S_symbol name; A_ty typ; A_pos pos; int escape;};
struct A_fieldList_ {A_field head; A_fieldList tail;};
struct A_expList_ {A_exp head; A_expList tail;};
struct A_vardec_ {A_pos pos; S_symbol var; A_ty typ; A_exp init; int escape;};
struct A_vardecList_ {A_vardec head; A_vardecList tail;};
struct A_decList_ {A_dec head; A_decList tail;};
struct A_efield_ {S_symbol name; A_pos pos; A_exp exp;};
struct A_efieldList_ {A_efield head; A_efieldList tail;};
struct A_tyList_ {A_ty head; A_tyList tail;};


/* Function Prototypes */
A_var A_SimpleVar(A_pos pos, S_symbol sym);
A_var A_FieldVar(A_pos pos, A_var var, S_symbol sym);
A_var A_SubscriptVar(A_pos pos, A_var var, A_exp exp);
A_exp A_VarExp(A_pos pos, A_var var);
A_exp A_ReturnExp(A_pos pos, A_exp exp);
A_exp A_NilExp(A_pos pos);
A_exp A_VoidExp(A_pos pos);
A_exp A_IntExp(A_pos pos, int i);
A_exp A_BoolExp(A_pos pos, char b);
A_exp A_StringExp(A_pos pos, char* s);
A_exp A_CallExp(A_pos pos, S_symbol func, A_expList args);
A_exp A_OpExp(A_pos pos, A_oper oper, A_exp left, A_exp right);
A_exp A_RecordExp(A_pos pos, S_symbol typ, A_efieldList fields);
A_exp A_SeqExp(A_pos pos, A_vardecList varDecs, A_expList seq);
A_exp A_AssignExp(A_pos pos, A_var var, A_exp exp);
A_exp A_IfExp(A_pos pos, A_exp test, A_exp then, A_exp elsee);
A_exp A_WhileExp(A_pos pos, A_exp test, A_exp body);
A_exp A_ForExp(A_pos pos, A_exp assign, A_exp cond, A_exp inc, A_exp body);
A_exp A_BreakExp(A_pos pos);
A_exp A_DecsExp(A_pos pos, A_decList decs);
A_exp A_ArrayExp(A_pos pos, S_symbol typ, A_exp size, A_exp init);
A_dec A_FunctionDec(A_pos pos, S_symbol name, A_fieldList params, A_ty result, A_exp body);
A_dec A_VariavelDec(A_pos pos, A_vardecList variavel);
A_ty A_NameTy(A_pos pos, S_symbol name);
A_ty A_RecordTy(A_pos pos, A_fieldList record);
A_ty A_ArrayTy(A_pos pos, S_symbol array);
A_ty A_FuncTy(A_pos pos, A_tyList params, A_ty result);
A_tyList A_TyList(A_ty head, A_tyList tail);
A_field A_Field(A_pos pos, S_symbol name, A_ty typ);
A_fieldList A_FieldList(A_field head, A_fieldList tail);
A_expList A_ExpList(A_exp head, A_expList tail);
A_vardec A_Vardec(A_pos pos, S_symbol var, A_ty typ, A_exp init);
A_vardecList A_VardecList(A_vardec head, A_vardecList tail);
A_decList A_DecList(A_dec head, A_decList tail);
A_efield A_Efield(A_pos pos, S_symbol name, A_exp exp);
A_efieldList A_EfieldList(A_efield head, A_efieldList tail);