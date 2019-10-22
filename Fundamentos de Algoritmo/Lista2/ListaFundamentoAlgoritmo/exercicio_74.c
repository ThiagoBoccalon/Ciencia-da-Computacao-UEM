
int exercicio_074(){
    double altura_de_joao = 1.5;
    double altura_de_maria = 1.1;
    int quantidade_de_anos = 0;

    while(altura_de_joao >= altura_de_maria){
        altura_de_joao += 0.02;
        altura_de_maria += 0.03;

        quantidade_de_anos ++;
    }

    printf("Quantidade de anos: %d", quantidade_de_anos);

}
