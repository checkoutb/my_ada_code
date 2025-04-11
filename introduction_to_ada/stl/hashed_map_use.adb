with Ada.Containers.Indefinite_Hashed_Maps;
with Ada.Strings.Hash;

with Ada.Text_IO; use Ada.Text_IO;

procedure Hashed_Map_Use is

    package Integer_Hashed_Maps is new
        Ada.Containers.Indefinite_Hashed_Maps
            (Key_Type => String,
             Element_Type => Integer,
             Hash => Ada.Strings.Hash,
             Equivalent_Keys => "=");
    use Integer_Hashed_Maps;

    M: Map;   -- 等价于 M: Indefinite_Hashed_Maps.Map;

begin

    M.Insert("AA", 66);
    -- M.Insert("AA", 66);   -- raise exception
    M.Include("AA", 22);  -- effective   AA is 22
    M.Include("BB", 33);
    M.Include("CC", 44);

    if M.Contains("AA") then
        Put_Line("aa " & Integer'Image(M("AA")));
    end if;

    M("AA") := 11;

    for C in M.Iterate loop
        Put_Line(Key(C) & " - " & Integer'Image(M(C)));
    end loop;


end Hashed_Map_Use;