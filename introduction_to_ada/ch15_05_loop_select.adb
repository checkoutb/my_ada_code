
with Ada.Text_IO; use Ada.Text_IO;

procedure Ch15_05_loop_select is
    task T is
        entry Reset;
        entry Incr;
    end T;

    task body T is 
        Cnt: Integer := 0;
    begin
        loop
            select
                accept Reset do
                    Cnt:= 0;
                end Reset;
                Put_Line("Reset");
            or
                accept Incr do
                    Cnt := Cnt + 1;
                end Incr;
                Put_Line(Integer'Image(Cnt));
            or 
                terminate;
            end select;
        end loop;
    end T;

begin
    Put_Line("main");

    for I in 1..4 loop
        T.Incr;
    end loop;

    T.Reset;
    for I in 1..4 loop
        T.Incr;
    end loop;
end Ch15_05_loop_select;
