#include <stdio.h>

// Function prototype
void sum();

int main() {
    sum();
    return 0;
}

// Function definition
void sum() {
    int a = 5, b = 3;
    printf("Sum: %d\n", a + b);
}