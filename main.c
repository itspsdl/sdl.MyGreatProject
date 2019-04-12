#include <stdio.h>
#include <stdlib.h>

#include "fib.h"

int main(int argc, char *argv[]) {
    int n = atoi(argv[1]);
    printf("%d\n", fib(n));
    return 0;
}
