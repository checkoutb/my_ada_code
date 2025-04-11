with Ada.Text_IO; use Ada.Text_IO;
--with Set;    -- set.ads not found.   .. need file name
with Ch13_01_Generic_instance;  -- 这个文件中没有 期望的unit。 期望 Ch13_01_Generic_Instance,但是找到 Set。

procedure Ch13_01_Generic_instance_main is
    Main: Integer := 0;
    Current: Integer;

    procedure Set_Main is new Ch13_01_Generic_Instance(T=>Integer, X=>Main);            --   <<<<<  X是value 。 都泛型了。。
begin
    Current:= 10;
    Set_Main(Current);
    Put_Line(Integer'Image(Main));
end Ch13_01_Generic_instance_main;