with Interfaces.C; use Interfaces.C;
with Ada.Text_IO; use Ada.Text_IO;

with bind_test_h; use bind_test_h;

procedure Visit_c is
    V: int;
begin
    V:= my_func(1);
    V:= my_func(1);
    V:= my_func(1);
    V:= my_func(30);

    Put_Line("v: " & int'Image(V) & ", cnt " & int'Image(func_cnt));
end Visit_c;