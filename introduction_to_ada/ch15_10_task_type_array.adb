with Ada.Text_IO; use Ada.Text_IO;

procedure Ch15_10_task_type_array is
    task type TT is
        entry Start(N: Integer);
    end TT;
    
    task body TT is
        Task_N: Integer;
    begin
        accept Start(N: Integer) do
            Task_N := N;
        end Start;
        Put_Line("task t " & Integer'Image(Task_N));
    end TT;

    My_Tasks: array(1..5) of TT;        -- <<<<<<<<<<<

begin
    Put_Line("main app");
    for I in reverse My_Tasks'Range loop
        My_Tasks(I).Start(I);
    end loop;    
end Ch15_10_task_type_array;