with Ada.Text_IO; use Ada.Text_IO;
with ch04_01_week_package;

procedure ch04_01_use_week_package is
    use ch04_01_week_package;
begin
    Put_Line("1st day of week is" & ch04_01_week_package.Mon);
    Put_Line("2nd is" & Tue);
end ch04_01_use_week_package;