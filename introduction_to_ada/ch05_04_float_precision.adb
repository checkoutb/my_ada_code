
with Ada.Text_IO; use Ada.Text_IO;

procedure Ch05_04_float_precision is

    type F3 is digits 3;
    type F15 is digits 15;
    type F18 is digits 18;
    --type F100 is digits 100;  -- digits value out of range, maximum is 18

begin
    Put_Line("F3 require " & Integer'Image(F3'size));   -- 32
    Put_Line("F15 require " & Integer'Image(F15'size)); -- 64
    Put_Line("F18 require " & Integer'Image(F18'size)); -- 128
    --Put_Line("F100 require " & Integer'Image(F100'size));
end Ch05_04_float_precision;
