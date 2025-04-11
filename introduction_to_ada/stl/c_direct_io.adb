with Ada.Text_IO;
with Ada.Direct_IO;

procedure C_Direct_IO is
    package Float_IO is new Ada.Direct_IO(Float);
    use Float_IO;
    F: Float_IO.File_Type;
    File_Name: constant String := "float.ignore";

begin
    Create(F, Out_File, File_Name);     -- Inout_File
    Write(F, 1.5);
    Write(F, 666.66);
    Write(F, 333.33);

    --------------
    Set_Index(F, Index(F) - 1);
    Write(F, 111.1111);     -- 把 333.33 替换了。
    Close(F);

    declare
        Value: Float;
    begin
        Open(F, In_File, File_Name);
        Set_Index(F, 2);            -- 从第二行 开始  -- 之前可以不关闭，这里不必 Open，直接 Set_Index , 上面要使用 Inout_File
        while not End_Of_File(F) loop
            Read(F, Value);
            Ada.Text_IO.Put_Line(Float'Image(Value));
        end loop;
        Close(F);
    end;

end C_Direct_IO;