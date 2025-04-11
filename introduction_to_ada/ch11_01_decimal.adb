with Ada.Text_IO; use Ada.Text_IO;

procedure Ch11_01_decimal is
    type T3_D3 is delta 10.0 ** (-3) digits 3;
    type T6_D3 is delta 10.0 ** (-3) digits 6;

begin

    Put_Line(T3_D3'Image(T3_D3'Delta));
    Put_Line(T3_D3'Image(T3_D3'First));
    Put_Line(T3_D3'Image(T3_D3'Last));

    New_Line;
    Put_Line(T6_D3'Image(T6_D3'Delta));
    Put_Line(T6_D3'Image(T6_D3'First));
    Put_Line(T6_D3'Image(T6_D3'Last));

end Ch11_01_decimal;