with Ada.Text_IO; use Ada.Text_IO;
with Ada.Real_Time; use Ada.Real_Time;
with Ada.Execution_Time; use Ada.Execution_Time;

procedure A_Real_Time is

    D: Time_Span := Seconds(5);
    Next : Time := Clock + D;

    ---------------------

    procedure Compute_Fun is
    begin
        delay 5.0;
    end Compute_Fun;
    Start_T, Stop_T : Time;
    Elapsed_Time : Time_Span;

    --------------------

    Start_CPU, Stop_CPU : CPU_Time;   -- 该程序使用了 多少CPU 时间，由于是 delay, 所以 耗时非常非常小。


begin

    Put("wait " & Duration'Image(To_Duration(D)));
    delay until Next;
    Put_Line("wake up..");

    Start_CPU := Clock;
    Start_T := Clock;
    Compute_Fun;
    Stop_T := Clock;
    Stop_CPU := Clock;
    Elapsed_Time := Stop_T - Start_T;

    Put_Line(Duration'Image(To_Duration(Elapsed_Time)));

    Put_Line("cpu: " & Duration'Image(To_Duration(Stop_CPU - Start_CPU)));



end A_Real_Time;