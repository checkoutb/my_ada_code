with Ada.Text_IO; use Ada.Text_IO;
with ch04_03_Week.child; use ch04_03_week.Child;
with ch04_03_week.child.chd; use ch04_03_week.child.chd;

procedure ch04_03_main is
begin
    Put_Line("1st is " & Get1st);

    Put_Line("2nd is " & Get_2nd);
end ch04_03_main;