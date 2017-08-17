/* driver.c...
	Driver para Arvore B teste:
	Cria ou Abre uma �rvore-B
	Obt�m pr�xima chave e chamadas de inserir a chave de inserir na �rvore
	Se necess�rio, cria uma nova raiz.
*/

#include <stdio.h>
#include "bt.h"
#include "Menu.h"

void inserirnaarvoreB(){
    int promoted;
	short root,   /*promove para baixo*/
		promo_rrn; /*rrn da page raiz*/
	char promo_key, /*chave promovida para raiz*/
		key; /*proxima chave a ser inserida na arvore*/

	if (btopen())  /* abrir btree.dat e obtem a raiz*/
		root = getroot();
	else /*se n�o existir btrre.dat entao criar*/
		root = create_tree();

	while ((key = getchar()) != 'q' ){
        fflush(stdin);
		promoted = insert(root, key, &promo_rrn, &promo_key);
		if (promoted)
			root = create_root(promo_key, root, promo_rrn);
    }
    promoted = insert(root, '1', &promo_rrn, &promo_key);
		if (promoted)
			root = create_root(promo_key, root, promo_rrn);

    btclose();
}

main(){

    chamamenu();

}
