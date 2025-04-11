with Interfaces.C; use Interfaces.C;

package Ada_var is
    func_cnt: int:= 0
        with Export => True, Convention => C;
    
    function My_Func(a: int) return int
        with Export => True, Convention => C;
end Ada_var;