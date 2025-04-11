with Ada.Text_IO; use Ada.Text_IO;
with Ada.Real_Time; use Ada.Real_Time;

with Ch15_06_delay_aux_pkg;

procedure Ch15_06_delay_aux_pkg_delay is
    package Aux renames Ch15_06_delay_aux_pkg;

    task T;
    task body T is 
        Cnt : Integer := 1;
    begin 
        for I in 1..5 loop
            delay 1.0;
            Aux.Show_Elasped_Time;
            Aux.Compute_App;
            Put_Line("cycle # " & Integer'Image(Cnt));
            Cnt := Cnt + 1;
        end loop;
        Put_Line("finish T");
    end T;

begin 
    null;
end Ch15_06_delay_aux_pkg_delay;