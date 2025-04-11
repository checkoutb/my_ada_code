with Ada.Text_IO; use Ada.Text_IO;
with Ada.Real_Time; use Ada.Real_Time;

with Ch15_06_delay_aux_pkg;

procedure Ch15_06_delay_aux_pkg_delay_until is
    package Aux renames Ch15_06_delay_aux_pkg;
    
    task T;
    task body T is
        Cycle: constant Time_Span := Milliseconds(1000);
        Next: Time := Aux.Get_Start_Time + Cycle;
        Cnt: Integer := 1;
    begin
        for I in 1..5 loop
            delay until Next;
            Aux.Show_Elasped_Time;
            Aux.Compute_App;
            Next := Next + Cycle;
            Put_Line("Cycle # " & Integer'Image(Cnt));
            Cnt := Cnt + 1;
        end loop;
        Put_Line("finish cycle");
    end T;
begin
    null;
end Ch15_06_delay_aux_pkg_delay_until;
