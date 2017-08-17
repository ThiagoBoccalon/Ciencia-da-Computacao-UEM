/*insert.c...
	Contém função insert () para inserir uma chave em uma btree 
	chama a si mesmo de forma recursiva até inferior da árvore é atingida. 
	em seguida, insere-chave no nó. 
	se o nó está fora do quarto, 
	chama split () para dividir nó 
	promove chave meio e rrn de novo nó
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
	BTPAGE page,
		newpage;
	int found, promoted;
	short pos,
	  p_b_rrn;
	char	p_b_key;
	
	if (rrn == NIL){
		*promo_key = key;
		*promo_r_child = NIL;
		return(true);
	}
	btread(rrn, &page);
	found = search_node(key, &page, &pos);
	if (found){
		printf("Erro: Tentando inserir chave já existente (chave duplicada): %c\n\007", key);
		return(0);
	}
}
	
	