with Ada.Text_IO; use Ada.Text_IO;

procedure ch05_01_my_integer is

    type My_Int is range -1 .. 20;

begin
    for I in My_Int loop
        Put_Line(My_Int'Image (I));
    end loop;
end ch05_01_my_integer;