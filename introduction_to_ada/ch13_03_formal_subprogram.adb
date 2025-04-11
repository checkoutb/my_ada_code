with Ada.Text_IO; use Ada.Text_IO;

procedure Ch13_03_Formal_SubproGram(X, Y: T) is
    Result: Boolean;
begin
    Result:= Comparison(X, Y);
    if Result then
        Put_Line(Desc & " ok");
    else
        Put_Line(Desc & " not ok");
    end if;
end Ch13_03_Formal_Subprogram;
