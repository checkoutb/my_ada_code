
with Ada.Text_IO; use Ada.Text_IO;

procedure Ch15_04_sync_entry_accept is
    task T is
        entry MyStart;              -- <<<<
    end T;

    task body T is
    begin
        accept MyStart;             -- <<<<
        Put_Line("task t");
    end T;
begin
    Put_Line("main");

    delay 1.0;
    T.MyStart;                         -- <<<<
end Ch15_04_sync_entry_accept;
