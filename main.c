#include <stdio.h>
#include "my_mat.h"

#define true 1
#define false 0

int main(void){
    char x;
    int s;
    int e;
    while(x!='D'){
        scanf("%c",&x);
        if (x=='A'){
            init(); //calls a void function that initializes a matrix and then applies the floyd-warshall algorithm to it.
        }
        if (x=='B'){
            scanf("%d%d",&s,&e);
            exists(s,e); //calls a void function that prints True or False.
        }
        if (x=='C'){
            scanf("%d%d",&s,&e);
            shortest(s,e);
        }
    }
}