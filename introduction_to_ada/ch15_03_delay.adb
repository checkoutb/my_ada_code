
with Ada.Text_IO; use Ada.Text_IO;

procedure Ch15_03_delay is
    task T;

    task body T is
    begin
        for I in 1..5 loop
            Put_Line("task T");
            delay 0.2;
        end loop;
    end T;

begin
    delay 0.5;
    Put_Line("main");
end Ch15_03_delay;

