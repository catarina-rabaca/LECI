#include <stdio.h>

int main() {
   char nome[30];
   char sobrenome[30];
   puts("Digite o seu nome e sobrenome: ");
   scanf("%s%s", nome, sobrenome);
   printf("Olá, %s %s!\n", nome, sobrenome); 
   
   return 0;
}
