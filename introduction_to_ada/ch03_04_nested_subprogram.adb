
with Ada.Text_IO; use Ada.Text_IO;
with ch03_02_increment_by;

procedure ch03_04_nested_subprogram is
    A,B,C: Integer;

    procedure Show_Res is
    begin
        Put_Line("Increment of " 
                & Integer'Image(A)
                & " with "
                & Integer'Image(B)
                & " is "
                & Integer'Image(C));
    end Show_Res;

begin
    A:= 12;
    B:= 4;
    C:= ch03_02_increment_by(A,B);
    Show_Res;
    A:= 222;
    B:= 34;
    C:= ch03_02_increment_by(A,B);
    Show_Res;
end ch03_04_nested_subprogram;