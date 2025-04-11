
with Ada.Text_IO; use Ada.Text_IO;

procedure ch05_05_subtype is
    type Days is (A,B,C,D,E,F,G);

    subtype Weekend_Days is Days range F .. G;

    Day: Days := F;
    Weekend: Weekend_Days;

begin
    Weekend:= Day;    -- ok
    Weekend:= A;  -- compile warn, run exception
end ch05_05_subtype;