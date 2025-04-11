with Ada.Text_IO; use Ada.Text_IO;
with Ch13_02_generic_pkg;

procedure Ch13_02_generic_pkg_main is

    package I is new Ch13_02_generic_pkg(T => Integer);

    procedure Display_Init is
    begin
        if I.Is_Valid then
            Put_Line("value has init");
        else
            Put_Line("value has not init");
        end if;
    end Display_Init;
    A: Integer;
begin
    Display_Init;

    I.Set(4);
    Display_Init;

    Put_Line("now value is " & Integer'Image(I.Get));

    I.Reset;
    Display_Init;

    A:= I.Get;    -- raise exception at runtime.

end Ch13_02_generic_pkg_main;
