/*insert.c...
	Cont�m fun��o insert () para inserir uma chave em uma btree
	chama a si mesmo de forma recursiva at� inferior da �rvore � atingida.
	em seguida, insere-chave no n�.
	se o n� est� fora do quarto,
	chama split () para dividir n�
	promove chave meio e rrn de novo n�
	*/

#include "bt.h"

/* insert() ...
	Argumentos:
	rrn:	rrn de pagina para fazer a insercao
	*promo_r_child: filho promovido para cima a partir daqui para o proximo nivel
	key: chave de insercao
	*promo_key: chave promovido aqui para cima ou no nivel seguinte
	*/

insert(short rrn, char key, short *promo_r_child, char *promo_key){
	BTPAGE page,  /*pagina atual*/
		newpage; /* nova pagina criada se ocorrer separacao*/
	int found, promoted; /* valor booleano*/
	short pos,
	  p_b_rrn;          /*rrn promovido para baixo*/
	char	p_b_key; /* chave promovida para baixo */

	if (rrn == NIL){    /* */
		*promo_key = key; /* chave original de modo que sera*/
		*promo_r_child = NIL; /*inserida em nivel de folha */
		return(YES);
	}

	btread(rrn, &page);
	found = search_node(key, &page, &pos);
	if (found){
		printf("Erro: Tentando inserir chave j� existente (chave duplicada): %c \n\007", key);
		return(0);
	}

	promoted = insert(page.child[pos], key, &p_b_rrn, &p_b_key);
	if (!promoted)
        return(NO);
    if (page.keycount < MAXKEYS){
        ins_in_page(p_b_key, p_b_rrn, &page); /* Ok a chave foi inserida e */
        btwrite(rrn, &page); /* ponteiro nesta pagina */
        return(NO); /* N�o promo��o */
    }
    else{
        split(p_b_key, p_b_rrn, &page, promo_key, promo_r_child, &newpage);
        btwrite(rrn, &page);
        btwrite(*promo_r_child, &newpage);
        return(YES); /* promocao*/
    }
}


