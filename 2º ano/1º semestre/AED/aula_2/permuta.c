#include <stdio.h>

void Permute(int* a, int* b, int* c){
    int k = *a;
    *a = *b;
    *b = *c;
    *c = k;

}


int main(){

    int x = 1;
    int y = 2;
    int z = 3;

    printf("x=%d, y=%d, z=%d", x,y,z);
    printf("\n");

    Permute(&x, &y, &z);

    printf("x=%d, y=%d, z=%d", x,y,z);
    printf("\n");

    Permute(&x, &y, &z);

    printf("x=%d, y=%d, z=%d", x,y,z);
    printf("\n");

    Permute(&x, &y, &z);
    printf("x=%d, y=%d, z=%d", x,y,z);
    printf("\n");



}