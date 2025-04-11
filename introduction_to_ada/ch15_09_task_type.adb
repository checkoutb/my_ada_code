with Ada.Text_IO; use Ada.Text_IO;

procedure Ch15_09_task_type is
    task type TT;
    task body TT is 
    begin
        Put_Line("task t");
    end TT;

    A_Task: TT;
    A,B: TT;
begin
    Put_Line("main app");
    declare
        C: TT;
    begin       -- declare 必须有这个 begin end。。
        null;
    end;
end Ch15_09_task_type;