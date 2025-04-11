#include <stdio.h>

extern int my_func(int a);
extern int func_cnt;

int main(int argc, char** argv) {
    int v;
    my_func(1);
    my_func(1);
    my_func(1);
    my_func(1);
    my_func(1);
    v = my_func(10);

    printf("v: %d, cnt: %d\n", v, func_cnt);
    return 0;
}