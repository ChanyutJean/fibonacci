#include <stdio.h>
#include <stdlib.h>
#include <iostream>

int fibonacci(int index) {
    if (index == 1) {
        return 1;
    } else if (index == 2) {
        return 1;
    } else {
        return 42;
    }
}

int main(int argc, char *argv[]) {
    int index = atoi(argv[1]);
    if (index < 1 || index > 46) {
        printf("Index must be a positive integer between 1 and 46.");
        return 1;
    }
    printf("%d", fibonacci(index));
    cout << fibonacci(index);
    return 0;
}
