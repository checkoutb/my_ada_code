package body Ada_var is
    function My_Func(a: int) return int is
    begin
        func_cnt:= func_cnt + 1;
        return a * 4;
    end My_Func;
end Ada_var;