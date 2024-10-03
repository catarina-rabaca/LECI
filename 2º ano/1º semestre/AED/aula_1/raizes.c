#include <stdio.h>
#include <math.h>

int main() {
    int numero_linhas;
    
    printf("Digite o número de linhas: ");
    scanf("%d", &numero_linhas);

    printf("-------------------------------\n");
    printf("| Numero | Raiz Quadrada       |\n");
    printf("-------------------------------\n");

    for (int i = 1; i <= numero_linhas; i++) {
        printf("| %-6d | %-18.2f |\n", i, sqrt(i)); 
    }

    printf("-------------------------------\n");

    return 0;
}
