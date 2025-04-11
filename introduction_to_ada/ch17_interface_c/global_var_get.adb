with Interfaces.C; use Interfaces.C;
with Ada.Text_IO; use Ada.Text_IO;

procedure Global_var_get is
    function my_func_c(a: int) return int
        with
            Import => True,
            Convention => C;
    
    V: int;

    func_cnt: int
        with
            Import => True, Convention => C;

begin

    V:= my_func_c(1);
    V:= my_func_c(2);
    V:= my_func_c(3);

    Put_Line("Res: " & int'Image(V) & ", cnt: " & int'Image(func_cnt));
end Global_var_get;
