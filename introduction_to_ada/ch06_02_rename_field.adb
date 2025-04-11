with Ada.Text_IO; use Ada.Text_IO;

package body Ch06_02_rename_field is

    procedure Inc_Month(Some_Day: in out Date) is
        M: Months renames Some_Day.Month;
        Y: Integer renames Some_Day.Year;

        function Next(M: Months) return Months renames Months'Succ;
    
    begin
        if M = M12 then
            M:= M1;
            Y:= Y + 1;
        else
            M:= Next(M);
        end if;
    end Inc_Month;

    procedure Display_Month(Some_Day: Date) is
        M: Months renames Some_Day.Month;
        Y: Integer renames Some_Day.Year;
    begin
        Put_Line("Month: " & Months'Image(M) & ", Year: " & Integer'Image(Y));
    end Display_Month;
end Ch06_02_rename_field;