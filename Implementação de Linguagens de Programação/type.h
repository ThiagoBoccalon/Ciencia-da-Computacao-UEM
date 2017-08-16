#include "symbol.h"
 
typedef struct Ty_ty_ *Ty_ty;
typedef struct Ty_tyList_ *Ty_tyList;
typedef struct Ty_field_ *Ty_field;
typedef struct Ty_fieldList_ *Ty_fieldList;

struct Ty_ty_ {enum {Ty_record, Ty_nil, Ty_int, Ty_string, Ty_array,
          		       Ty_name, Ty_void, Ty_bool, Ty_func, Ty_function, Ty_var} kind;
          	   union 
               {
                  Ty_fieldList record;
          		    Ty_ty array;
                  struct {S_symbol sym; Ty_ty ty;} name;
                  struct {S_symbol name; Ty_fieldList params; Ty_ty result;} function;
          		    struct {Ty_tyList params; Ty_ty result;} func;
          	   } u;
              };

struct Ty_tyList_ {Ty_ty head; Ty_tyList tail;};
struct Ty_field_ {S_symbol name; Ty_ty ty;};
struct Ty_fieldList_ {Ty_field head; Ty_fieldList tail;};

Ty_ty Ty_Nil(void);
Ty_ty Ty_Int(void);
Ty_ty Ty_Bool(void);
Ty_ty Ty_String(void);
Ty_ty Ty_Void(void);
Ty_ty Ty_Var(Ty_ty ty, S_symbol sym);
Ty_ty Ty_Func(Ty_tyList params, Ty_ty result);
Ty_ty Ty_Function(S_symbol name, Ty_fieldList params, Ty_ty result);

Ty_ty Ty_Record(Ty_fieldList fields);
Ty_ty Ty_Array(Ty_ty ty);
Ty_ty Ty_Name(S_symbol sym, Ty_ty ty);

Ty_tyList Ty_TyList(Ty_ty head, Ty_tyList tail);
Ty_field Ty_Field(S_symbol name, Ty_ty ty);
Ty_fieldList Ty_FieldList(Ty_field head, Ty_fieldList tail);

Ty_ty Ty_Actual(Ty_ty type);
char Ty_Match(Ty_ty type1, Ty_ty type2);

void Ty_print(Ty_ty t);
void TyList_print(Ty_tyList list);

