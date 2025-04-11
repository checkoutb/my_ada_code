with Ada.Text_IO; use Ada.Text_IO;
procedure Ch16_01_pre_condition is
    procedure DB_Entry(Name: String; Age: Natural)
        with Pre => Name'Length > 1
    is
    begin
        Put_Line("got " & Name & Integer'Image(Name'Length));
    end DB_Entry;
begin
    DB_Entry("jjjj", 20);
    DB_Entry("", 22);
end Ch16_01_pre_condition;
