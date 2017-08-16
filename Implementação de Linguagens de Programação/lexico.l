%{
 
#include "sintatico.tab.h"
#include "errormsg.h"

extern YYSTYPE yylval;

static int pos = 1;
int contadorComentario = 0;
char string[1000];

void adjust();

%}
  
%x IN_STRING
%x IN_COMMENT
%x IN_COMMENT_LINE
   
DIGIT    [0-9]
VARIAVEL [a-zA-Z][a-zA-Z0-9_]*
INTEGER  {DIGIT}+
CARACTER_ESPECIAL [-]
VARIAVEL_INVALIDO ([0-9]+[a-zA-Z]+[a-zA-Z0-9]*)|([a-zA-Z][a-zA-Z0-9]*[&][a-zA-Z0-9[&]*)
%%

<INITIAL>

"("  { adjust(); return LPAREN        ; }
")"  { adjust(); return RPAREN        ; }
"["  { adjust(); return LBRACK        ; }
"]"  { adjust(); return RBRACK        ; }
"{"  { adjust(); return LBRACE        ; }
"}"  { adjust(); return RBRACE        ; }
","  { adjust(); return COMMA         ; }
";"  { adjust(); return SEMICOLON     ; }
"+"  { adjust(); return PLUS          ; }
"-"  { adjust(); return MINUS         ; }
"*"  { adjust(); return TIMES         ; }
"/"  { adjust(); return DIVIDE        ; }
"%"  { adjust(); return MOD           ; }
"==" { adjust(); return EQUAL         ; }
"!=" { adjust(); return NEQUAL        ; }
">"  { adjust(); return GT            ; }
">=" { adjust(); return GE            ; }
"<"  { adjust(); return LT            ; }
"<=" { adjust(); return LE            ; }
"||" { adjust(); return OR            ; }
"&&" { adjust(); return AND           ; }
"!"  { adjust(); return NOT           ; }
"="  { adjust(); return ASSIGN        ; }
"+=" { adjust(); return ASSIGN_PLUS   ; }
"-=" { adjust(); return ASSIGN_MINUS  ; }
"*=" { adjust(); return ASSIGN_TIMES  ; }
"/=" { adjust(); return ASSIGN_DIVIDE ; }
"%=" { adjust(); return ASSIGN_MOD    ; }
"?"  { adjust(); return IF_TERNARIO   ; }
":"  { adjust(); return COLON         ; }

if        { adjust(); return IF        ; }
else      { adjust(); return ELSE      ; }
while     { adjust(); return WHILE     ; }
for       { adjust(); return FOR       ; }
break     { adjust(); return BREAK     ; }
return    { adjust(); return RETURN    ; }

string    { adjust(); yylval.sval = "string";   return T_STRING  ; }
bool      { adjust(); yylval.sval = "bool";     return T_BOOL    ; }
int       { adjust(); yylval.sval = "int";      return T_INT     ; }
read      { adjust(); yylval.sval = "read";     return READ      ; }
write     { adjust(); yylval.sval = "write";    return WRITE     ; }
false     { adjust(); yylval.ival = 0;          return FALSE     ; }
true      { adjust(); yylval.ival = 1;          return TRUE      ; }

{VARIAVEL_INVALIDO} { EM_error(EM_tokPos, "token ilegal: %s", yytext); adjust();}

{VARIAVEL}  { yylval.sval = strdup(yytext); adjust(); return ID    ; }
     
{INTEGER}   { yylval.ival = atoi(yytext); adjust(); return INT     ; }

"//" { adjust(); BEGIN(IN_COMMENT_LINE); }

<IN_COMMENT_LINE>{
   \n   { adjust(); BEGIN(INITIAL); }
   .    { adjust(); }
}

"/*" { adjust(); BEGIN(IN_COMMENT); }

<IN_COMMENT>{
   \n   { adjust(); }
   .    { adjust(); }
   "*/" { adjust(); BEGIN(INITIAL); }
}

"\"" { adjust(); strcat(string, yytext); BEGIN(IN_STRING); }

<IN_STRING>{
   "\"" { adjust(); strcat(string, yytext); yylval.sval = strdup(string); strcpy(string, "");  BEGIN(INITIAL); return STRING; }  
   .    { adjust(); strcat(string, yytext); }
}
   
[ \t\n\r] { adjust(); } 
     
.       { EM_error(EM_tokPos, "%s e um caracter ilegal!", yytext); adjust(); };

%%

int yywrap() {}

void adjust(){
   if (strcmp( yytext, "\n" ) == 0 ) {
      EM_newline();
   }else{
      EM_tokPos = pos;
      pos += yyleng;
   }
}

//main()
//{
//   yylex();
//}
