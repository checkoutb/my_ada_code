
with Ada.Text_IO; use Ada.Text_IO;

package body Ch15_02_simple_sync_pkg is
    task body T is
    begin
        for I in 1..5 loop
            Put_Line("hi");
        end loop;
    end T;
end Ch15_02_simple_sync_pkg;

