with Ada.Text_IO; use Ada.Text_IO;
with Interfaces.C; use Interfaces.C;

procedure Show_c_struct is

    type c_struct is record
        a: int;
        b: long;
        c: unsigned;
        d: double;
    end record
        with Convention => C;

begin
    Put_Line("show c struct");
    -- c_struct.a := 1;                     -- invalid prefix
    -- Put_Line(" !! " & int'Image(c_struct.a));
end Show_c_struct;