with Ada.Text_IO;
with Ada.Sequential_IO;

procedure C_Sequential_IO is
    package Float_IO is
        new Ada.Sequential_IO(Float);
    use Float_IO;

    F: Float_IO.File_Type;
    File_Name: constant String := "float.ignore";

    --------------
    type Num_Info is record
        Valid: Boolean := False;
        Value: Float;
    end record;
    package Num_Info_IO is new 
        Ada.Sequential_IO(Num_Info);
    use Num_Info_IO;
    F2: Num_Info_IO.File_Type;
    

begin
    Create(F, Out_File, File_Name);
    Write(F, 1.5);
    Write(F, 2.3);
    Write(F, 6.7);
    Close(F);

    declare
        Val : Float;
    begin
        Open(F, In_File, File_Name);
        while not End_Of_File(F) loop
            Read(F, Val);
            Ada.Text_IO.Put_Line(Float'Image(Val));
        end loop;
        -- Close(F);
        Delete(F);
    end;

    ---------------------

    Create(F2, Out_File, File_Name);
    Write(F2, (True, 1.4));
    Write(F2, (False, 3.1));
    Write(F2, (True, 777.77));
    Close(F2);

    declare
        Val: Num_Info;
    begin
        Open(F2, In_File, File_Name);
        while not End_Of_File(F2) loop
            Read(F2, Val);
            Ada.Text_IO.Put_Line(Boolean'Image(Val.Valid) & ", " & Float'Image(Val.Value));
        end loop;
        -- Close(F2);
        Delete(F2);
    end;

end C_Sequential_IO;
