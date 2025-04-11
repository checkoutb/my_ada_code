with Ada.Strings.Fixed; use Ada.Strings.Fixed;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings; use Ada.Strings;
with Ada.Strings.Maps; use Ada.Strings.Maps;

procedure B_Standard_String is
    S: String := "hello" & 3 * " world";      -- 6666
    P: constant String := "world";
    Idx: Natural;
    Cnt: Natural;

    --------------
    F: Positive;
    L: Natural;
    I: Natural := 1;

    Whitespace: constant Character_Set := To_Set(' ');

    --------------- change content
    N: constant String := "beautiful";


begin
    Cnt:= Ada.Strings.Fixed.Count(Source => S, Pattern => P);    -- 个数
    Put_Line(S & " has " & P & ": " & Natural'Image(Cnt));

    Idx := 0;
    for I in 1..Cnt loop
        Idx := Index(Source => S, Pattern => P, From => Idx + 1);  -- 下标
        Put_Line("position: " & Natural'Image(Idx));
    end loop;

    ------------------
    while I in S'Range loop
        Find_Token(                   --
            Source => S,
            Set => Whitespace,
            From => I,
            Test => Outside,
            First => F,
            Last => L
        );

        exit when L = 0;

        Put_Line("find in " & Natural'Image(F) & ": " & S(F..L));   -- S(F..L)
        I := L + 1;
    end loop;

    ----------------- change content

    -- S 应该是 "hello world"

    Idx := Index(Source => S, Pattern => P);

    if Idx > 0 then
        declare
            S_ins : String := S;
            S_ovr : String := S;
            S_del : String := S;

            S_i : String := Insert(S, Idx, N & " ");
            S_o : String := Overwrite(S, Idx, N);
            S_d : String := Trim(Delete(S, Idx, Idx + P'Length - 1), Ada.Strings.Right);
        begin
            Insert(S_ins, Idx, N, Right);       -- inplace
            Overwrite(S_ovr, Idx, N, Right);
            Delete(S_del, Idx, Idx + P'Length - 1);

            Put_Line(S);
            Put_Line(S_i);
            Put_Line(S_o);
            Put_Line(S_d);
            Put_Line(S_ins);
            Put_Line(S_ovr);
            Put_Line(S_del);
        end;
    end if;

end B_Standard_String;