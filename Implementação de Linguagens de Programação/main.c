#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "util.h"
#include "symbol.h"
#include "absyn.h"
#include "errormsg.h"
#include "parse.h"
#include "temp.h"
 
int main(int argc, char **argv){
   A_exp prog;
   char arquivoRI[100];
   FILE* out;

   if (argc < 2) {
      fprintf(stderr, "Use: %s 'Nome do arquivo'\n", argv[0]);
      exit(1);
   }
   /* yydebug = 1; */

   if (!(prog = parse(argv[1])))
      exit(1);

   if (argc == 3)
      out = fopen( argv[2], "w" );
   
   analizador_semantico(prog);

   /*if (!EM_anyErrors){
      printf("\n Arvore sintatica abstrata -> \n\n");
      pr_exp(stdout, prog, 3);
      printf("\n\n");
   }
   */
   return 0;
}
