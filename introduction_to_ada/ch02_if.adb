

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure CH02_iF is
    N: Integer;
begin
    Put("enter a int: ");
    Get(N);

    Put(N);
    if N > 0 then
        Put_Line(" is a positive int");
    elsif N in -10..0 then    -- both -10 and 0 
        Put_Line(" is -10 - 0");
    else
        Put_Line(" is < -10");
    end if;
end CH02_iF;
