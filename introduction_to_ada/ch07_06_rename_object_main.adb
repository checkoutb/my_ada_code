with Ada.Text_IO; use Ada.Text_IO;
with Ch07_06_rename_object;

procedure Ch07_06_rename_object_main is
    subtype Degrees is Ch07_06_rename_object.Degree_Celsius;

    T: Degrees renames Ch07_06_rename_object.Current_Temperature;

begin
    T := 5.0;
    Put_Line(Degrees'Image(T));
    Put_Line(Degrees'Image(Ch07_06_rename_object.Current_Temperature));    -- T 代表 xxx

    T := T + 2.5;
    Put_Line(Degrees'Image(T));
    Put_Line(Degrees'Image(Ch07_06_rename_object.Current_Temperature));
end Ch07_06_rename_object_main;