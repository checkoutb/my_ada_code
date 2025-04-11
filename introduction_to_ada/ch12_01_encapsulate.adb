
with Ada.Text_IO; use Ada.Text_IO;

package body Ch12_01_Encapsulate is
    procedure Hello is
    begin
        Put_Line("Hello");
    end Hello;

    procedure Hello2 is
    begin
        Put_Line("Hello 2");
    end Hello2;
end Ch12_01_Encapsulate;