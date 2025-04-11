
with Ada.Text_IO; use Ada.Text_IO;
with ch04_02_package_nobody;

procedure ch04_02_package_nobody_use is
    use ch04_02_package_nobody;

    I: Integer:= 0;
    R: Integer;

    procedure Show_V is
        Incr: constant Integer:= Get_Incr;
    begin
        Put_Line(Integer'Image(I) & Integer'Image(Incr) & Integer'Image(R));
        I:= R;
    end Show_V;
begin
    R:= Incr_By(I);
    Show_V;
    R:= Incr_By(I);
    Show_V;

    R:= Incr_By(I, 5);
    Show_V;
    R:= Incr_By(I);
    Show_V;
end ch04_02_package_nobody_use;
