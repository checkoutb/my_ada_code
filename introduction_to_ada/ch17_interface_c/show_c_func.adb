with Interfaces.C; use Interfaces.C;
with Ada.Text_IO; use Ada.Text_IO;

procedure Show_c_func is

    function my_func(a : int) return int   --  int..
        with 
            Import => True,
            Convention => C;

    function func1(a: int) return int
        with Import => True,
        Convention => C,
        External_Name => "my_func";

    V: int;
begin
    V:= my_func(2);
    Put_Line("my func : " & int'Image(V));

    V:= func1(V);
    Put_Line("func1 : " & int'Image(V));

end Show_c_func;