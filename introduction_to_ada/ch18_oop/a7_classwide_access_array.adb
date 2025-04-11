with Ada.Text_IO; use Ada.Text_IO;

package body A7_classwide_access_array is
    procedure Init(A: in out T) is
    begin
        Put_Line("init");
        A.E := 0;
    end Init;

    procedure Show(Dummy: T) is
    begin
        Put_Line("use type " & T'External_Tag);
    end Show;

    procedure Show(Dummy: T_New) is
    begin
        Put_Line("use type " & T_New'External_Tag);
    end Show;
end A7_classwide_access_array;