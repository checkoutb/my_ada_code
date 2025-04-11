
with Ada.Text_IO; use Ada.Text_IO;

procedure Ch07_05_array_slice is
    Buf: String:= "hello ...";
    FullName: String := "John Smith";
begin
    Buf(7..9) := "bob";
    Put_Line(Buf);

    Put_Line("Hi " & FullName(1..4));   -- 这里不会自带空格。。
end Ch07_05_array_slice;
