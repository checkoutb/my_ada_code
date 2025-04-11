
with Ada.Text_IO; use Ada.Text_IO;

procedure Ch15_01_simple_task is
    task T;
    task body T is
    begin
        Put_Line("this is task T");
    end T;
begin
    Put_Line("this is main");
end Ch15_01_simple_task;
