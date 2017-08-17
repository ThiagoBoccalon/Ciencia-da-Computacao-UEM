/* btio.c
	Cont�m fun��es de �rvore B que envolvem diretamente arquivo E/S:


	btopen() -- arquivo aberto "b tree.data" para manter a �rvore B.
	btclose() --  Fechar "btree.dat".
	getroot() -- obter rrn de raiz de dois primeiros bytes de btree.dat.
	putroot() -- colocar rrn do n� raiz nos dois primeiros bytes de btree.dat.
	create_tree() -- criar "btree.dat" e n� raiz
	getpage() --  chegar pr�ximo bloco dispon�vel em "btree.dat" para uma nova p�gina
	btread() -- leia p�gina n�mero rrn de "btree.dat"
	btwrite() -- escrever p�gina n�mero rrn para "btree.dat"
*/

#include <fcntl.h>
#include "stdio.h"
#include "bt.h"
#include "fileio.h"


int btfd;  /* global file descriptor for "btree.dat" */

btopen()
{
	btfd = open("btree.dat", O_RDWR);
	return(btfd > 0);
}

btclose(){
	close(btfd);
}

short getroot()
{
	short root;
	long lseek();

	lseek(btfd, 0L, 0);
	if (read(btfd, &root, 2) == 0){
		printf("Erro");
		exit(1);
	}
	return(root);
	}

putroot(short root)
{
	lseek(btfd, 0L, 0);
	write(btfd, &root, 2);
}

short create_tree()
{
	char key;
	int rrn = 0;

	btfd = creat("btree.dat", 777);
	close(btfd);	/* Have to close and reopen to insure */
	btopen();		/*read/write acess on many system */
	key = getchar();		/* Get first key. */
	fflush(stdin);
	putroot(rrn);
	return(create_root(key, NIL, NIL));
}

short getpage()
{
	long lseek(), addr;
	addr = lseek(btfd, 0L, 2) - 2L;
	return((short) addr / PAGESIZE);
}

btread(short rrn, BTPAGE *page_ptr)
{
    long lseek(), addr;

    addr = (long)rrn * (long)PAGESIZE + 2L;
    lseek(btfd, addr, 0);
    return(read(btfd, page_ptr, PAGESIZE));
}

btwrite(short rrn, BTPAGE *page_ptr)
{
	long lseek(), addr;
	addr = (long) rrn * (long) PAGESIZE + 2L;
	lseek(btfd, addr, 0);
	return(write(btfd, page_ptr, PAGESIZE));
}

