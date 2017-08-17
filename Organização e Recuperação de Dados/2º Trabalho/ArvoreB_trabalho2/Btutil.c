/*
*/
#include "bt.h"
#include "fileio.h"

	create_root(char key, short left, short rigth)
	{
		BTPAGE page;
		short rrn;
		rrn = getpage();
        pageinit(&page);
		page.key[0] = key;
		page.child[0] = left;
		page.child[1] = rigth;
		page.keycount = 1;
		putroot(rrn);
		btwrite(rrn, &page);
		//putroot(rrn);
		return(rrn);
	}

pageinit(BTPAGE *p_page) /*p_page: ponteiro para pagina */
{
	int j;

	for(j = 0; j < MAXKEYS; j++){
		p_page-> key[j] = NOKEY;
		p_page-> child[j] = NIL;
	}
        p_page->child[MAXKEYS] = NIL;
        p_page->keycount = 0;
}

search_node(char key, BTPAGE *p_page, short *pos)
	{
		int i;
		for (i = 0; i < p_page->keycount && key > p_page->key[i]; i++);
		*pos = i;
		if (*pos < p_page->keycount && key == p_page->key[*pos])
			return(YES);
		else
			return(NO);
	}

	ins_in_page(char key, short r_child, BTPAGE *p_page){
		int i;
		for(i = p_page->keycount; key < p_page->key[i-1] && i>0; i--){
			p_page->key[i] = p_page->key[i-1];
			p_page->child[i+1] = p_page->child[i];
		}
        p_page->keycount++;
        p_page->key[i] = key;
        p_page->child[i+1] = r_child;
	}


    split(char key, short r_child, BTPAGE *p_oldpage, char *promo_key, short *promo_r_child, BTPAGE *p_newpage)
		{
			int i;
			short mid;
			char workkeys[MAXKEYS+1];
			short workch[MAXKEYS+2];

			for(i=0; i < MAXKEYS; i++){
				workkeys[i] = p_oldpage->key[i];
				workch[i] = p_oldpage->child[i];
			}
			workch[i] = p_oldpage->child[i];
			for (i=MAXKEYS; key < workkeys[i-1] && i>0; i--){
				workkeys[i] = workkeys[i-1];
				workch[i+1] = workch[i];
			}
			workkeys[i] = key;
			workch[i+1] = r_child;

			*promo_r_child = getpage();
			pageinit(p_newpage);

			for(i=0; i < MINKEYS; i++)
            {
                p_oldpage->key[i] = workkeys[i];
                p_oldpage->child[i] = workch[i];
                p_newpage->key[i] = workkeys[i+1+MINKEYS];
                p_newpage->child[i] = workch[i+1+MINKEYS];
                p_oldpage->key[i+1+MINKEYS] = NOKEY;
                p_oldpage->child[i+1+MINKEYS] = NIL;
			}
		}
