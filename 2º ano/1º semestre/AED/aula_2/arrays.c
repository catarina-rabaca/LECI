#include <stdio.h>
#include <assert.h>
#include <stdlib.h>

// Display the contents of array a with n elements
// Pre-Conditions: a != NULL and n > 0
// Example of produced output: Array = [ 1.00, 2.00, 3.00 ]

void DisplayArray(double* a, size_t n) {
    assert(a!=NULL);
    assert(n>0);
    

    printf("Array = [");
    for (size_t i = 0; i < n; i++) {
        printf(" %.2f", a[i]);  
        if (i < n - 1) {
            printf(",");  
        }
    }
    printf(" ]\n");
}



// Read the number of elements, allocate the array and read its elements
// Condition: number of elements > 0
// Pre-Condition: size_p != NULL
// Return NULL if memory allocation fails
// Set *size_p to ZERO if memory allocation fails
double* ReadArray(size_t* size_p) { 
    assert(size_p != NULL);
    assert(*size_p > 0);

    size_t size_array = *size_p;
    double* array = malloc (size_array * sizeof(double));

    if (array == NULL) {
        *size_p = 0;
        return NULL;
    }

    for (size_t i = 0; i < size_array; i++) {
        scanf("%lf", &array[i]);

    }
    return array;
}



// Allocate and return a new array with (size_1 + size_2) elements
// which stores the elements of array_1 followed by the elements of array_2
// Pre-Conditions: array_1 != NULL and array_2 != NULL
// Pre-Conditions: size_1 > 0 and size_2 > 0
// Return NULL if memory allocation fails




double* Append(double* array_1, size_t size_1, double* array_2, size_t size_2){

    assert(array_1 != NULL && array_2 != NULL);
    assert(size_1 > 0 && size_2 > 0);

    double* array = malloc ((size_1 + size_2) * sizeof(double));
        
    if (array == NULL) {
    return NULL;  // Retorna NULL se a alocação falhar
    }

    // Copiar os elementos de array_1 para o novo array
    for (size_t i = 0; i < size_1; i++) {
        array[i] = array_1[i];
    }

    for (size_t i = 0; i < size_2; i++) {
        array[size_1 + i] = array_2[i];
    }

    return array;
}

int main(){
    size_t size_1 = 3, size_2 = 4;
    
    double* array_1 = ReadArray(&size_1);
    DisplayArray(array_1, size_1);

    double* array_2 = ReadArray(&size_2);
    DisplayArray(array_2, size_2);

    double* merged_array = Append(array_1, size_1, array_2, size_2);
    DisplayArray(merged_array, size_1 + size_2);

    free(array_1);
    free(array_2);
    free(merged_array);

    return 0;
}


/*
// Test example:
//
//
Array = [ 1.00, 2.00, 3.00 ]
Array = [ 4.00, 5.00, 6.00, 7.00 ]
Array = [ 1.00, 2.00, 3.00, 4.00, 5.00, 6.00, 7.00 ]
*/