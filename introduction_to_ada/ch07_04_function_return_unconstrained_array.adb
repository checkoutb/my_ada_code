
with Ada.Text_IO; use Ada.Text_IO;

procedure Ch07_04_function_return_unconstrained_array is
    type Days is (D1, D2, D3, D4, D5, D6, D7);

    function Get_Day_Name(Day: Days:= D7) return String is
    begin
        return
            (case Day is 
            when D1 => "Monday",
            when D2 => "Tuesday",
            when others => "i don't know");     -- w h e n others
    end Get_Day_Name;
begin
    Put_Line("xxxx : " & Get_Day_Name(Days'First));
    Put_Line("zzzz : " & Get_Day_Name(Days'Last));
    Put_Line("xxxx : " & Get_Day_Name);        -- 不能加 ()。
end Ch07_04_function_return_unconstrained_array;
