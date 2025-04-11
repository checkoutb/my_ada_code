with Ada.Text_IO; use Ada.Text_IO;
with Ada.Numerics; use Ada.Numerics;

with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;

procedure D_Numeric_Elementary_Func is
    X: Float;

begin
    X:= 2.0;

    Put_Line(Float'Image(Sqrt(2.0)));
    Put_Line(Float'Image(Log(e)));
    Put_Line(Float'Image(Log(10000.0, 10.0)));  -- 必须 float, 10是 integer。不匹配
    Put_Line(Float'Image(Log(512.0, 2.0)));
    Put_Line(Float'Image(Cos(3.1415926)));
    Put_Line(Float'Image(Arccos(-1.0)));

end D_Numeric_Elementary_Func;