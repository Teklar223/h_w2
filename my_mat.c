#include <stdio.h>
#include "my_mat.h"
#define n 10
#define true 1
#define false -1
int mat[n][n];
void floydAlgorithm();

int min(int a, int b){
    if (a>b){
        return b;
    }
    return a;
}

void init(){
    for(int i=0;i<n;i++){
        for(int j=0;j<n;j++){
            mat[i][j]=0; //init to relevant values
        }
    }
    // user input block 
    for(int i=0;i<n;i++){
        for(int j=0;j<n;j++){
            scanf("%d",&mat[i][j]); //init to relevant values
        }
    }
    floydAlgorithm(); //moving on to apply floyd-Warshall algorithm to this matrix.
}

void floydAlgorithm(){
    for(int k=0; k<n; k++){
        for(int i=0;i<n;i++){
            for(int j=0;j<n;j++){
                if (mat[i][k] != 0 && mat[k][j] != 0 && mat[i][j] != 0)
                {
                    mat[i][j] = min(mat[i][j], mat[i][k] + mat[k][j]);
                }
                if (i != j && mat[i][j] == 0 && mat[k][j] != 0 && mat[i][k] != 0)
                {
                    mat[i][j] = mat[i][k] + mat[k][j];
                }
            }
        }
    }
}

int exists(int s, int e){
    if (mat[s][e]!=0){
        return true;
    }
    else {
        return false;
    }
}

void shortest(int s, int e){
    if (exists(s,e) == true){
        printf("%d",mat[s][e]);
    }
    else{
        printf("-1");
    }
}