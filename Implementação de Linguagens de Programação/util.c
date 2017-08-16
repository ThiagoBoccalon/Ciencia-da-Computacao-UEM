/*
 * util.c - commonly used utility functions.
 */
 
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "util.h"
void *checked_malloc(int len)
{void *p = malloc(len);
 if (!p) {
    fprintf(stderr,"\nRan out of memory!\n");
    exit(1);
 }
 return p;
}

string String(char *s)
{string p = checked_malloc(strlen(s)+1);
 strcpy(p,s);
 return p;
}

list_t list(void *data, list_t next)
{
    list_t p = checked_malloc(sizeof(*p));
    p->data = data;
    p->next = next;
    return p;
}

list_t int_list(int i, list_t next)
{
    list_t p = checked_malloc(sizeof(*p));
    p->i = i;
    p->next = next;
    return p;
}

list_t bool_list(bool b, list_t next)
{
    list_t p = checked_malloc(sizeof(*p));
    p->b = b;
    p->next = next;
    return p;
}

U_boolList U_BoolList(bool head, U_boolList tail)
{ U_boolList list = checked_malloc(sizeof(*list));
  list->head = head;
  list->tail = tail;
  return list;
}
