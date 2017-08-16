/* A Bison parser, made by GNU Bison 3.0.4.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

#ifndef YY_YY_SINTATICO_TAB_H_INCLUDED
# define YY_YY_SINTATICO_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    ID = 258,
    STRING = 259,
    T_STRING = 260,
    T_BOOL = 261,
    T_INT = 262,
    READ = 263,
    WRITE = 264,
    INT = 265,
    FALSE = 266,
    TRUE = 267,
    LPAREN = 268,
    RPAREN = 269,
    LBRACK = 270,
    RBRACK = 271,
    LBRACE = 272,
    RBRACE = 273,
    COMMA = 274,
    SEMICOLON = 275,
    COLON = 276,
    PLUS = 277,
    MINUS = 278,
    TIMES = 279,
    DIVIDE = 280,
    MOD = 281,
    EQUAL = 282,
    NEQUAL = 283,
    GT = 284,
    GE = 285,
    LT = 286,
    LE = 287,
    OR = 288,
    AND = 289,
    NOT = 290,
    ASSIGN = 291,
    ASSIGN_PLUS = 292,
    ASSIGN_MINUS = 293,
    ASSIGN_TIMES = 294,
    ASSIGN_DIVIDE = 295,
    ASSIGN_MOD = 296,
    IF = 297,
    ELSE = 298,
    WHILE = 299,
    FOR = 300,
    BREAK = 301,
    RETURN = 302,
    IF_TERNARIO = 303
  };
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED

union YYSTYPE
{
#line 11 "sintatico.y" /* yacc.c:1909  */

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

#line 127 "sintatico.tab.h" /* yacc.c:1909  */
};

typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_SINTATICO_TAB_H_INCLUDED  */
