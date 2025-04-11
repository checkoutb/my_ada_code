with Ada.Strings; use Ada.Strings;
with Ada.Strings.Bounded;
with Ada.Text_IO; use Ada.Text_IO;

procedure B_Bounded_String is
    package B_Str is new 
        Ada.Strings.Bounded.Generic_Bounded_Length(Max => 15);
    use B_Str;

    S1, S2 : Bounded_String;

    procedure Show(S: Bounded_String) is
    begin
        Put_Line(To_String(S) & " sz:" & Integer'Image(Length(S)));    -- Bounded_String has not S'Length
        Put_Line("mx " & Integer'Image(Max_Length));   -- 这个 Max_Length 是 B_Str 中的？
    end Show;

begin

    S1 := To_Bounded_String("hello");
    Show(S1);

    S2 := To_Bounded_String("hello world");
    Show(S2);

    -- S1 := To_Bounded_String("too long 123456789qwertyui");  -- raise exception
    -- Show(s1);

    ---------------------
    Append(S1, " ckb");
    Put_Line(To_String(S1));

    S2 := To_Bounded_String("hi");
    S1 := S1 & " " & S2;
    Put_Line(To_String(S1));


end B_Bounded_String;