with Ada.Text_IO;
with Ada.Streams.Stream_IO; use Ada.Streams.Stream_IO;

procedure C_Stream_IO is
    F: File_Type;
    S: Stream_Access;
    Fname: constant String := "float.ignore";

    --------- unbounded type


begin
    Create(F, Out_File, Fname);
    S := Stream(F);

    Float'Write(S, 1.5);
    Float'Write(S, 33333.33);
    Float'Write(S, 6.66);
    Close(F);

    declare
        Value: Float;
    begin
        Open(F, In_File, Fname);
        S:= Stream(F);
        while not End_Of_File(F) loop
            Float'Read(S, Value);
            Ada.Text_IO.Put_Line(Float'Image(Value));
        end loop;
        -- Close(F);
        Delete(F);
    end;

    ---------------- unbounded type
    Create(F, Out_File, Fname);
    S:= Stream(F);

    String'Output(S, "hi");
    Float'Output(S, 1.555);
    String'Output(S, "world");
    Float'Output(S, 2.222);
    String'Output(S, "ckb");
    Float'Output(S, 3333.33);
    Close(F);

    declare
        -- SS: String;
        FF: Float;
    begin
        Open(F, In_File, Fname);
        S:= Stream(F);
        while not End_Of_File(F) loop
            declare
                SS: String := String'Input(S);
            begin
                FF := Float'Input(S);
                Ada.Text_IO.Put_Line(SS & " -- " & Float'Image(FF));
            end;
        end loop;
        Delete(F);
    end;
end C_Stream_IO;