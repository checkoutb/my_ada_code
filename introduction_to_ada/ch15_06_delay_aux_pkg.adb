with Ada.Text_IO; use Ada.Text_IO;

package body Ch15_06_delay_aux_pkg is
    procedure Show_Elasped_Time is
        Now_Time : Time;
        Elasped_Time : Time_Span;
    begin
        Now_Time := Clock;
        Elasped_Time:= Now_Time - Start_Time;
        Put_Line("elasped time " & Duration'Image(To_Duration(Elasped_Time)) & " seconds");
    end Show_Elasped_Time;

    procedure Compute_App is
    begin
        delay 0.5;
    end Compute_App;
end Ch15_06_delay_aux_pkg;
