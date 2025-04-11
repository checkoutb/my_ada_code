
with Ada.Text_IO; use Ada.Text_IO;
with Ch06_02_rename_field; use Ch06_02_rename_field;

-- package Dates renames Ch06_02_rename_field;  -- compile error

procedure Ch06_02_rename_main is

    -- package Dates renames Ch06_02_rename_field; -- ok

    D: Date := (1, M1, 2022);

begin
    Display_Month(D);

    Inc_Month(D);
    Display_Month(D);

    D.Month := M12;
    Inc_Month(D);
    Display_Month(D);

end Ch06_02_rename_main;
