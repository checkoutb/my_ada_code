#include "global_var.h"

int func_cnt = 0;

int my_func(int a) {
    func_cnt++;
    return a * 2;
}
