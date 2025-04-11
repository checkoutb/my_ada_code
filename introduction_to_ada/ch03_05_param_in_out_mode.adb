
with Ada.Text_IO; use Ada.Text_IO;

procedure ch03_05_param_in_out_mode is
    procedure Swap(A, B: in out Integer) is
        Tmp: Integer;
    begin
        Tmp := A;
        A := B;
        B := Tmp;
    end Swap;

    A : Integer := 23;
    B : Integer := 111;

begin 
    Swap(A, B);

    Put_Line(Integer'Image(A));
    Put_Line(Integer'Image(B));
end ch03_05_param_in_out_mode;