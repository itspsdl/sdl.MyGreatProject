static int fibi(int n, int a, int b) {
    if (n == 0) {
        return b;
    } else {
        return fibi(n - 1, b, a + b);
    }
}

int fib(int n) {
    return fibi(n, 1, 0);
}
