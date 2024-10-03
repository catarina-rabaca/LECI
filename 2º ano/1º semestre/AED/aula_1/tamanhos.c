#include <stdio.h>

int main(){
    puts("Número de bytes das variaveis em C:");
    printf("Tamanho de um char: %lu\n", sizeof(char));
    printf("Tamanho de um int: %lu\n", sizeof(int));
    printf("Tamanho de um void: %lu\n", sizeof(void));
    printf("Tamanho do void*: %lu\n", sizeof(void*));
    printf("Tamanho de um short: %lu\n", sizeof(short));
    printf("Tamanho de um long: %lu\n", sizeof(long));
    printf("Tamanho de um long long: %lu\n", sizeof(long long));
    printf("Tamanho de um float: %lu\n", sizeof(float));
    printf("Tamanho de um double: %lu\n", sizeof(double));
}