#include <stdio.h>
#include <stdlib.h>
#define MAXKEYS 4
#define MINKEYS MAXKEYS/2
#define NIL (-1)
#define NOKEY '@'
#define NO 0
#define YES 1

typedef struct{
    short: keycount;
    char: key[MAXKEYS];
    char child[MAXKEYS + 1];
} BTPAGE;

#define PAGESIZE sizeof(BTPAGE)

extern short root;
extern int btfd;
extern int infd;

/*prototypes */

btclose();
btopen();
btread(short rrn, BTPAGE *page_ptr);
btwrite(short rrn, BTPAGE *page_ptr);
create_root(char key, short left, short rigth);
short create_tree();
short getpage();
short getroot();
insert ();


int main()
{

    return 0;
}
