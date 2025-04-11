with Ada.Text_IO; use Ada.Text_IO;
with A7_classwide_access_array; use A7_classwide_access_array;

procedure A7_classwide_access_array_main is
    T_Arr : array(1..2) of T_Class;

begin
    T_Arr(1) := new T;
    T_Arr(2) := new T_New;

    for I in T_Arr'Range loop
        Put_Line("element # " & Integer'Image(I));
        T_Arr(I).Init;
        T_Arr(I).Show;
        
    end loop;

end A7_classwide_access_array_main;