#include <stdio.h>

int main(){

    int a[12] = {31,28,31,30,31,30,31,31,30,31,30,31};
    int b[12];

    printf("a: \n");
    for (int i = 0; i<12; i++){
        printf("%d, ", a[i]);
    }

    printf("\nb: \n");

    int soma = 0;
    for (int i = 0; i<12; i++){
        soma += a[i];
        b[i] = soma;
    }

    
    for (int i = 0; i<12; i++){
        printf("%d, ", b[i]);
        
    }

    return 0;
}