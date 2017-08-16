#include <assert.h>
 
typedef char *string;
typedef char bool;

#define TRUE 1
#define FALSE 0

void *checked_malloc(int);
string String(char *);

typedef struct list_s *list_t;
struct list_s
{
    union {
        int i;
        bool b;
        void *data;
    };
    struct list_s *next;
};
list_t list(void *data, list_t next);
list_t int_list(int i, list_t next);
list_t bool_list(bool b, list_t next);

typedef struct U_boolList_ *U_boolList;
struct U_boolList_ {bool head; U_boolList tail;};
U_boolList U_BoolList(bool head, U_boolList tail);

