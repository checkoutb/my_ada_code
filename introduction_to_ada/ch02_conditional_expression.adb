
-- if     case

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure ch02_conditional_expression is
    N: Integer;
begin
    Put ("enter an int: ");
    Get(N);
    Put(N);

    declare
        S: constant String := (if N > 0 then " is positive" else " is not positive");

    begin
        Put_Line(S);
    end;

--------------------

    for I in 1..5 loop
        Put_Line (case I is when 1|3|5 => "odd", when 2|4 => "even");
    end loop;
end ch02_conditional_expression;
