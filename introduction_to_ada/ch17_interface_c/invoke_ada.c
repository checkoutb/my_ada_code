#include <stdio.h>
extern int ada_func(int a);

int main(int argc, char **argv) {
    int v = ada_func(3);
    printf("res: %d\n", v);
    return 0;
}