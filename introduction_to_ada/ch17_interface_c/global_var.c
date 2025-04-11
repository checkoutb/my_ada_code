#include "global_var.h"

int func_cnt = 0;

int my_func_c(int a) {
    func_cnt++;
    return a * 2;
}
