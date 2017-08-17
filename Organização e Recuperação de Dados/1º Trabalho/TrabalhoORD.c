#include<stdio.h>
#include<string.h>
#include <stdlib.h>

struct{
int id;
char nomec[100];
char nomep[100];
char descricao[250];
}x;

struct{
    int id_esp;
    int id_ind;
    char sexo;
}y;

struct{
    int id_cap;
    int id;
    int id_esp;
    int comp;
    int larg;
    int peso;
    char data[11];
    char local[50];
}z;
FILE *arq;
FILE *arq2;
FILE *arq3;
FILE *temp;

int especie(){
int id;

    printf("\nID\n>>>");
    scanf("%d",&id);
    fflush(stdin);

  	arq = fopen("especie.txt","rb");

  	 if(arq == NULL){

  	 	arq = fopen("especie.txt","wb");
  	 }
          while((fread(&x,sizeof(x),1,arq)== 1)){

  	  	 if(id == x.id){
  	  	 	   printf("\n Ja existe cadastro com o ID informado");
  	  	 		printf("\n\n");

                 fclose(arq);

                return 0;
  	  	 }}
        fclose(arq);
        arq = fopen("especie.txt","ab");

        x.id = id;
        printf("\nNome cientifico\n>>>");
        gets(x.nomec);
        printf("\nNome popular\n>>>");
        gets(x.nomep);
        printf("\nDescricao da especie\n>>>");
        gets(x.descricao);


            if((fwrite(&x,sizeof(x),1,arq) == 1)){
            printf("\n Dados salvos com sucesso !");


			    }

   fclose(arq);
}


  void excluir_esp(){

    int cod;
    int op;
    int cont = 0;

arq = fopen("especie.txt","rb");

printf("\n Informe o ID para exluir:");
scanf("%d",&cod);

  	     while((fread(&x,sizeof(x),1,arq)== 1)){

  	  	    if(cod == x.id){
  	  	 	  printf("\n________________________________");
  	       	  printf("\n ID:%d",x.id);
  	  	      printf("\n Nome Cientifico:%s",x.nomec);
  	  	 	  printf("\n Nome popular:%s",x.nomep);
  	  	 	  printf("\n Descricao:%s",x.descricao);
  	  	 	  printf("\n________________________________");
  	  	 	  printf("\n\n");
  	  	 	  cont++;
  	  	      }
  	  	    }


  	  	 	  if(cont >0){


	         	arq = fopen("especie.txt","rb");

		       temp = fopen("dadosTemp.txt","wb");


  	  	 	      do{
  	  	 	          printf("\nDeseja mesmo excluir? 1-sim / 2-nao:");
  	  	 	          scanf("%d",&op);

  	  	 	       }while((op <1) || (op >2));

  	  	 	     switch(op){
  	  	 	       case 1:

					 while((fread(&x,sizeof(x),1,arq)== 1)){


  	  	 	     	     if(x.id != cod){
  	  	 	     	       fwrite(&x,sizeof(x),1,temp);
  	          	           printf("\n Apagado com sucesso !");

			              }
			           }

			           fclose(arq);
			           fclose(temp);


			           temp=fopen("dadosTemp.txt","rb");

			          arq=fopen("especie.txt","wb");


					 while((fread(&x,sizeof(x),1,temp)== 1)){


  	  	 	         	fwrite(&x,sizeof(x),1,arq);
			         }

			           fclose(arq);
			           fclose(temp);

			           break;

  	  	 	     		case 2:
  	  	 	     		main();
  	  	 	     		break;

  	  	 	     	}

  	  	 	     }
  	  	 	       else{

  	  	 	       	      printf("\n Nao foi encontrado o ID informado!");

                          main();
  	  	 	         }

  }

  void busca_esp(){
    int cod;
    arq = fopen("especie.txt","rb");
    printf("\n Informe o ID para busca:");
  	 scanf("%d",&cod);


  	     while((fread(&x,sizeof(x),1,arq)== 1)){

  	  	    if(cod == x.id){
  	  	 	  printf("\n________________________________");
  	       	  printf("\n ID:%d",x.id);
  	  	      printf("\n Nome Cientifico:%s",x.nomec);
  	  	 	  printf("\n Nome Popular:%s",x.nomep);
  	  	 	  printf("\n Descricao:%s",x.descricao);
  	  	 	  printf("\n________________________________");
  	  	 	  printf("\n\n");
        }
  	     }

fclose(arq);

  }


int individuos(){
int cod,cod2;


        printf("\nID do individuo\n>>>");
        scanf("%d",&cod2);
        fflush(stdin);

  	arq2 = fopen("individuos.txt","rb");

  	 if(arq2 == NULL){

  	 	arq2 = fopen("individuos.txt","wb");
  	 }
          while((fread(&y,sizeof(y),1,arq2)== 1)){

  	  	 if(cod2 == y.id_ind){
  	  	 	   printf("\n Ja existe cadastro com o ID informado");
  	  	 		printf("\n\n");

                 fclose(arq2);

                return 0;
  	  	 }}
        fclose(arq2);
         arq2 = fopen("individuos.txt","ab");
        printf("\nID da especie\n>>>");
    scanf("%d",&cod);
    fflush(stdin);



        printf("\nSexo(m/f)\n>>>");
        scanf("%c",&y.sexo);
        fflush(stdin);
    y.id_esp=cod;
    y.id_ind=cod2;

        if((fwrite(&y,sizeof(y),1,arq2) == 1)){
            printf("\n Dados salvos com sucesso !");
            }


   fclose(arq2);
}
  void busca_ind(){
    int cod;
    arq2 = fopen("individuos.txt","rb");
    printf("\n Informe o ID para busca:");
  	 scanf("%d",&cod);
  	 fflush(stdin);


  	     while((fread(&y,sizeof(y),1,arq2)== 1)){

  	  	    if(cod == y.id_ind){
  	  	 	  printf("\n________________________________");
  	  	 	   printf("\n ID da especie:%d",y.id_esp);
  	       	  printf("\n ID do individuo:%d",y.id_ind);
  	  	 	  printf("\n Sexo:%c",y.sexo);
  	  	 	  printf("\n________________________________");
  	  	 	  printf("\n\n");
        }
  	     }

fclose(arq2);

  }

  void excluir_ind(){

    int cod;
    int op;
    int cont = 0;

arq2 = fopen("individuos.txt","rb");

printf("\n Informe o ID para exluir:");
scanf("%d",&cod);
fflush(stdin);

  	     while((fread(&y,sizeof(y),1,arq2)== 1)){

  	  	    if(cod == y.id_ind){
  	  	 	  printf("\n________________________________");
  	  	 	   printf("\n ID da especie:%d",y.id_esp);
  	       	  printf("\n ID do individuo:%d",y.id_ind);
  	  	 	  printf("\n Sexo:%c",y.sexo);
  	  	 	  printf("\n________________________________");
  	  	 	  printf("\n\n");
  	  	 	  cont++;
  	  	      }
  	  	    }


  	  	 	  if(cont >0){


	         	arq2 = fopen("individuos.txt","rb");

		       temp = fopen("dadosTemp.txt","wb");


  	  	 	      do{
  	  	 	          printf("\nDeseja mesmo excluir? 1-sim / 2-nao:");
  	  	 	          scanf("%d",&op);
  	  	 	          fflush(stdin);

  	  	 	       }while((op <1) || (op >2));

  	  	 	     switch(op){
  	  	 	       case 1:

					 while((fread(&y,sizeof(y),1,arq2)== 1)){


  	  	 	     	     if(y.id_ind != cod){
  	  	 	     	       fwrite(&y,sizeof(y),1,temp);
  	          	           printf("\n Apagado com sucesso !");

			              }
			           }

			           fclose(arq2);
			           fclose(temp);


			           temp=fopen("dadosTemp.txt","rb");

			          arq2=fopen("individuos.txt","wb");


					 while((fread(&y,sizeof(y),1,temp)== 1)){


  	  	 	         	fwrite(&y,sizeof(y),1,arq2);
			         }

			           fclose(arq2);
			           fclose(temp);

			           break;

  	  	 	     		case 2:
  	  	 	     		main();
  	  	 	     		break;

  	  	 	     	}

  	  	 	     }
  	  	 	       else{

  	  	 	       	      printf("\n Nao foi encontrado o ID informado!");

                          main();
  	  	 	         }

  }

int capturas(){
int id;

        printf("\nID da captura\n>>>");
        scanf("%d",&id);
        fflush(stdin);

  	arq3 = fopen("capturas.data","rb");

  	 if(arq3 == NULL){

  	 	arq3 = fopen("capturas.data","wb");
  	 }
          while((fread(&z,sizeof(z),1,arq3)== 1)){

  	  	 if(id == z.id_cap){
  	  	 	   printf("\n Ja existe cadastro com o ID informado");
  	  	 		printf("\n\n");

                 fclose(arq3);

                return 0;
  	  	 }}
        fclose(arq3);
        arq3 = fopen("capturas.data","ab");
        z.id_cap=id;
        printf("\nID do individuo\n>>>");
        scanf("%d",&z.id);
        fflush(stdin);
         printf("\nID da especie\n>>>");
        scanf("%d",&z.id_esp);
        fflush(stdin);
        printf("\nComprimento\n>>>");
        scanf("%d",&z.comp);
        fflush(stdin);
        printf("\nLargura\n>>>");
        scanf("%d",&z.larg);
        fflush(stdin);
        printf("\nPeso\n>>>");
        scanf("%d",&z.peso);
        fflush(stdin);
        printf("\nData\n>>>");
        scanf("%s",z.data);
        fflush(stdin);
        printf("\nLocal\n>>>");
        scanf("%s",z.local);
        fflush(stdin);


        if((fwrite(&z,sizeof(z),1,arq3) == 1)){
            printf("\n Dados salvos com sucesso !");
            }


   fclose(arq3);


}

  void excluir_cap(){

    int cod;
    int op;
    int cont = 0;

arq3 = fopen("capturas.data","rb");

printf("\n Informe o ID para exluir:");
scanf("%d",&cod);
fflush(stdin);

  	     while((fread(&z,sizeof(z),1,arq3)== 1)){

  	  	    if(cod == z.id_cap){
  	  	 	  printf("\n________________________________");
  	  	 	  printf("\n ID da captura:%d",z.id_cap);
  	       	  printf("\n ID do individuo:%d",z.id);
  	       	  printf("\n ID da especie:%d",z.id_esp);
  	       	  printf("\n Comprimento:%d",z.comp);
  	       	  printf("\n Largura%d",z.larg);
  	       	  printf("\n Peso:%d",z.peso);
  	       	  printf("\n Data:%s",z.data);
  	       	  printf("\n Local:%s",z.local);
  	  	 	  printf("\n________________________________");
  	  	 	  printf("\n\n");
  	  	 	  cont++;
  	  	      }
  	  	    }


  	  	 	  if(cont >0){


	         	arq3 = fopen("capturas.data","rb");

		       temp = fopen("dadosTemp.txt","wb");


  	  	 	      do{
  	  	 	          printf("\nDeseja mesmo excluir? 1-sim / 2-nao:");
  	  	 	          scanf("%d",&op);
  	  	 	          fflush(stdin);

  	  	 	       }while((op <1) || (op >2));

  	  	 	     switch(op){
  	  	 	       case 1:

					 while((fread(&z,sizeof(z),1,arq3)== 1)){


  	  	 	     	     if(z.id_cap != cod){
  	  	 	     	       fwrite(&z,sizeof(z),1,temp);
  	          	           printf("\n Apagado com sucesso !");

			              }
			           }

			           fclose(arq3);
			           fclose(temp);


			           temp=fopen("dadosTemp.txt","rb");

			          arq3=fopen("capturas.data","wb");


					 while((fread(&z,sizeof(z),1,temp)== 1)){


  	  	 	         	fwrite(&z,sizeof(z),1,arq3);
			         }

			           fclose(arq3);
			           fclose(temp);

			           break;

  	  	 	     		case 2:
  	  	 	     		main();
  	  	 	     		break;

  	  	 	     	}

  	  	 	     }
  	  	 	       else{

  	  	 	       	      printf("\n Nao foi encontrado o ID informado!");

                          main();
  	  	 	         }

  }
void busca_cap(){
    int cod;
    int cont = 0;
    arq3 = fopen("capturas.data","rb");
    printf("\n Informe o ID do individuo para buscar:");
  	 scanf("%d",&cod);


  	     while((fread(&z,sizeof(z),1,arq3)== 1)){

  	  	    if(cod == z.id){
  	  	 	  printf("\n________________________________");
  	  	 	  printf("\n ID da captura:%d",z.id_cap);
  	       	  printf("\n ID do individuo:%d",z.id);
  	       	  printf("\n ID do epecie:%d",z.id_esp);
  	       	  printf("\n Comprimento:%d",z.comp);
  	       	  printf("\n Largura%d",z.larg);
  	       	  printf("\n Peso:%d",z.peso);
  	       	  printf("\n Data:%s",z.data);
  	       	  printf("\n Local:%s",z.local);
  	  	 	  printf("\n________________________________");
  	  	 	  printf("\n\n");
  	  	 	  	  cont ++;
        }
  	     }

fclose(arq3);

  }
int consulta2(){
int cod;
    int cont = 0;
    arq3 = fopen("capturas.data","rb");
    printf("\n Informe o ID da especie para buscar:");
  	 scanf("%d",&cod);


  	     while((fread(&z,sizeof(z),1,arq3)== 1)){

  	  	    if(cod == z.id_esp){
  	  	 	  printf("\n________________________________");
  	  	 	  printf("\n ID da captura:%d",z.id_cap);
  	       	  printf("\n ID do individuo:%d",z.id);
  	       	  printf("\n ID do epecie:%d",z.id_esp);
  	       	  printf("\n Comprimento:%d",z.comp);
  	       	  printf("\n Largura%d",z.larg);
  	       	  printf("\n Peso:%d",z.peso);
  	       	  printf("\n Data:%s",z.data);
  	       	  printf("\n Local:%s",z.local);
  	  	 	  printf("\n________________________________");
  	  	 	  printf("\n\n");
  	  	 	  	  cont ++;
        }
  	     }

fclose(arq3);
}


  int consulta3(){
    int cod;
    arq3 = fopen("capturas.data","rb");


fread(&z,sizeof(z),1,temp);

  	  	 	  printf("\n________________________________");
  	  	 	  printf("\n ID da captura:%d",z.id_cap);
  	       	  printf("\n ID do individuo:%d",z.id);
  	       	  printf("\n ID da especie:%d",z.id_esp);
  	       	  printf("\n Comprimento:%d",z.comp);
  	       	  printf("\n Largura%d",z.larg);
  	       	  printf("\n Peso:%d",z.peso);
  	       	  printf("\n Data:%s",z.data);
  	       	  printf("\n Local:%s",z.local);
  	  	 	  printf("\n________________________________");
  	  	 	  printf("\n\n");



fclose(arq3);

  }
int main(){

int opcao=0;
do{

printf("\n\nMENU\n\n");
printf("1 - Especies\n");
printf("2 - Individuos\n");
printf("3 - Capturas\n");
printf("4 - Consultas\n");
printf("5 - Importar dados\n");
printf("6 - Sair\n");
printf("Digite a opcao:");
scanf("%d",&opcao);
   fflush(stdin);

switch(opcao){
case 1:
            do{
                printf("\n\nMENU\n\n");
                printf("1 - Cadastrar Especie\n");
                printf("2 - Buscar Especie\n");
                printf("3 - Excluir Especie\n");
                printf("4 - Voltar\n");
                printf("Digite a opcao:");
                scanf("%d",&opcao);
                fflush(stdin);
                switch(opcao){
                case 1:especie();break;
                case 2:busca_esp();break;
                case 3:excluir_esp();break;
                }

            }while(opcao!=4);
            break;
case 2:

                do{ printf("\n\nMENU\n\n");
                printf("1 - Cadastrar Individuos\n");
                printf("2 - Buscar Individuos\n");
                printf("3 - Excluir Individuos\n");
                printf("4 - Voltar\n");
                printf("Digite a opcao:");
                scanf("%d",&opcao);
                fflush(stdin);
                switch(opcao){
                case 1:individuos();break;
                case 2:busca_ind();break;
                case 3:excluir_ind();break;

                }

            }while(opcao!=4);
            break;
case 3:

                do{ printf("\n\nMENU\n\n");
                printf("1 - Cadastrar Capturas\n");
                printf("2 - Buscar Capturas\n");
                printf("3 - Excluir Capturas\n");
                printf("4 - Voltar\n");
                printf("Digite a opcao:");
                scanf("%d",&opcao);
                fflush(stdin);
                switch(opcao){
                case 1:capturas();break;
                case 2:busca_cap();break;
                case 3:excluir_cap();break;

                }

                }while(opcao!=4);
                break;
case 4:
            do{ printf("\n\nMENU\n\n");
                printf("Historico de monitoramento:\n");
                printf("1 - Individuo\n");
                printf("2 - Especie\n");
                printf("3 - Ultima captura\n");
                printf("4 - Voltar\n");
                printf("Digite a opcao:");
                scanf("%d",&opcao);
                fflush(stdin);
                switch(opcao){
                case 1:busca_cap();break;
                case 2:consulta2();break;
                case 3:consulta3();break;

                }

                }while(opcao!=4);
                break;
}
}while(opcao!=6);



}
