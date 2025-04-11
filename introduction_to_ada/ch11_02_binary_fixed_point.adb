
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
    D: constant := 2.0 ** (-20);
    type TQ20 is delta D range -1.0 .. 1.0-D;

    type TQ20_2 is delta 2.0**(-20) range -1.0 .. 1.0 - 2.0**(-20);
begin
    Put_Line(Integer'Image(TQ20'Size));
    Put_Line(TQ20'Image(TQ20'Delta));
    Put_Line(TQ20'Image(TQ20'First));
    Put_Line(TQ20'Image(TQ20'Last));
end Main;