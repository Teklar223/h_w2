#include <stdio.h>
#include "my_mat.h"

#define true 1
#define false 0

int main(){
    char x;
    int s;
    int e;
    int exist = 0;
    while(x!='D'){
        scanf("%c",&x);
        if (x=='A'){
            init(); //calls a void function that initializes a matrix and then applies the floyd-warshall algorithm to it.
        }
        if (x=='B'){
            scanf("%d",&s);
            scanf("%d",&e);
            exist = exists(s,e); //calls a void function that prints True or False.
            if (exist == true){
                printf("True\n");
            }
            else
            {
                printf("False\n");
            }
        }
        if (x=='C'){
            scanf("%d",&s);
            scanf("%d",&e);
            shortest(s,e);
            printf("\n");
        }
    }
}