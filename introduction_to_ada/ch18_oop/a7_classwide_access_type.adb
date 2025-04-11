with Ada.Text_IO; use Ada.Text_IO;

package body A7_classwide_access_type is
    procedure Show(Dummy: T) is                 -- 参数名必须和 ads中一致
    begin
        Put_Line("use type " & T'External_Tag);
    end Show;

    procedure Show(Dummy: T_New) is
    begin
        Put_Line("use type " & T_New'External_Tag);
    end Show;
end A7_classwide_access_type;