
with Ada.Text_IO; use Ada.Text_IO;

procedure Ch07_01_array is

    type My_Int is range 0..1000;
    type Index is range 1..5;           -- 下标从1开始

    type My_Int_Array is 
        array(Index) of My_Int;             -- Index is type
    
    Arr: My_Int_Array := (2,3,5,7,11);     -- ()
    V: My_Int;

begin
    for I in Index loop
        V:= Arr(I);                     -- ()
        Put(My_Int'Image(V));
    end loop;

    New_Line;                   -- std::endl;
end Ch07_01_array;