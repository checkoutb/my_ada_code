with Ada.Text_IO; use Ada.Text_IO;
with Ada.Exceptions; use Ada.Exceptions;

procedure Ch14_02_handle_exception is
    File: File_Type;
begin
    --begin               -- 这个begin 和对应的 end  一起删除。
        Open(File, In_File, "input.txt");
    exception
        when E: Name_Error =>
            Put("Cannot open file:");
            Put_Line(Exception_Message(E));
            raise;                        -- re-raise current exception
    --end;
end Ch14_02_handle_exception;
