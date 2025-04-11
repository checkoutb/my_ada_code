with Ada.Text_IO; use Ada.Text_IO;

procedure C_File_text_io is
    F : File_Type;
    File_Name: constant String := "output.ignore";
begin
    Put_Line(Standard_Output, "hello 1");
    Put_Line(Standard_Error, "hello 2");

    Create(F, Out_File, File_Name);
    Put_Line(F, "hi 1");
    Put_Line(F, "hi 222");

    Reset(F);           -- 清空文件

    Put_Line(F, "hi 33");
    Close(F);

    Open(F, In_File, File_Name);
    while not End_Of_File(F) loop
        Put_Line(Get_Line(F));
    end loop;

    --Close(F);
    Delete(F);          -- 删除文件 , Close 和 File　都会释放文件，所以再次操作　会 file not open

end C_File_text_io;