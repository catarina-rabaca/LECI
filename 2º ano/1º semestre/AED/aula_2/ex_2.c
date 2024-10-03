#include <stdio.h>
#include <ctype.h>
#include <string.h>

// Ler duas strings e realizar diversas operações

int main(){
    int count1 = 0, count2 = 0, comparacao;
    char string1[100], string2[100];
    
    printf("Digite a primeira string: ");
    scanf("%s", string1);

    printf("Digite a segunda string: ");
    scanf("%s", string2);

    // Contar letras da primeira string
    for (int i = 0; i < strlen(string1); i++) {
        if (isalpha(string1[i])) {
            count1++;
        }
    }
    printf("A primeira string tem %d letras\n", count1);

    // Contar letras maiúsculas da segunda string
    for (int i = 0; i < strlen(string2); i++) {
        if (isupper(string2[i])) {
            count2++;
        }
    }
    printf("A segunda string tem %d letras maiúsculas\n", count2);

    // Converter a primeira string para minúsculas
    for (int i = 0; i < strlen(string1); i++) {
        if (isupper(string1[i])) {
            string1[i] = tolower(string1[i]);
        }
    }
    printf("A primeira string em minúsculas: %s\n", string1);

    // Converter a segunda string para minúsculas
    for (int i = 0; i < strlen(string2); i++) {
        if (isupper(string2[i])) {
            string2[i] = tolower(string2[i]);
        }
    }
    printf("A segunda string em minúsculas: %s\n", string2);

    // Comparar as strings
    comparacao = strcmp(string1, string2);
    if (comparacao == 0) {
        printf("As strings são iguais\n");
    } else {
        if (comparacao < 0) {
            printf("A ordem lexicográfica: %s, %s\n", string1, string2);
        } else {
            printf("A ordem lexicográfica: %s, %s\n", string2, string1);
        }
    }

    //Crie uma cópia da segunda string. Crie e imprima uma string que resulta da concatenação da segunda string com a sua cópia.

    int size_2 = strlen(string2);
    char con[size_2 + size_2 + 1];

    strcopy(con, string2);

    printf("Cópia: %s", con);

    strcat(con, string2);

    printf("\n Concatenação: %s", con);

    
    return 0;
}
