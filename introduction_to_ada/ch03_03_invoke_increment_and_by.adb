
with Ada.Text_IO; use Ada.Text_IO;
with ch03_02_increment_by;
with ch03_01_function;

procedure ch03_03_invoke_increment_and_by is
    A,B,C: Integer;
begin
    C := ch03_02_increment_by;

    Put_Line("no arg invoke inc_by got: "&Integer'Image(C));

    A := 10;
    B := 3;
    C := ch03_02_increment_by(A, B);

    Put_Line("inc_by"&Integer'Image(A)&Integer'Image(B)&Integer'Image(C));

    A := 50;
    B := 10;
    C := ch03_02_increment_by(I => A, Incr => B);
    Put_Line("named param " &Integer'Image(A) &Integer'Image(B) &Integer'Image(C));

    C := ch03_01_function(C);
    Put_Line("01 func" &Integer'Image(C));
end ch03_03_invoke_increment_and_by;
