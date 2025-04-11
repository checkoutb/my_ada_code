
with Ada.Text_IO; use Ada.Text_IO;

procedure Ch06_01_record is

    type Months is
        (M1,M2,M3,M4,M5,M6,M7,M8,M9,M10,M11,M12);
    
    type Date is record
        Day: Integer range 1..31;
        Month: Months;
        Year: Integer range 1..3000 := 2012;             -- 限制 + 默认值
    end record;

    procedure Show_Date(D: Date) is
    begin
        Put_Line("Day: " & Integer'Image(D.Day)
                & ", Month: " &Months'Image(D.Month)
                & ", Year: " &Integer'Image(D.Year));
    end Show_Date;

    Some_Day: Date := (1, M1, 2000);
    An_Day: Date := (Year => 2025, Month => M4, Day => 6);
    -- A_Day: Date := (Year => 2011, 1, M5);                 -- ERROR
    A_Day: Date := (1, Year => 2022, Month => M5);

begin

    Show_Date(Some_Day);
    Show_Date(An_Day);
    Show_Date(A_Day);

    Some_Day.Year := 2099;
    Show_Date(Some_Day);
end;

