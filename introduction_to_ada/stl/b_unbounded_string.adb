with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings; use Ada.Strings;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

procedure B_Unbounded_String is

    S1, S2 : Unbounded_String;

    procedure Show(S: Unbounded_String) is
    begin
        Put_Line(To_String(S) & ", " & Integer'Image(Length(S)));
    end Show;

begin
    S1 := To_Unbounded_String("hello");
    S1 := Null_Unbounded_String & "hello";

    Show(S1);

    S2 := To_Unbounded_String("a lllllooooooonnnnnnnngggggggg");
    Show(S2);

    -------------------
    S1 := S1 & " world";
    Append (S1, ", ckb");

    Show(s1);
    
end B_Unbounded_String;