with Ada.Containers.Indefinite_Ordered_Maps;
with Ada.Text_IO; use Ada.Text_IO;

procedure Ordered_Map_Use is
    package Integer_Ordered_Maps is new
        Ada.Containers.Indefinite_Ordered_Maps
            (Key_Type => String, Element_Type => Integer);
    use Integer_Ordered_Maps;

    M: Map;

begin
    M.Include("AA", 22);
    M.Include("BB", 88);
    M.Include("CC", 55);

    if M.Contains("AA") then
        Put_Line(Integer'Image(M("AA")));
    end if;

    M("AA") := 33;

    for C in M.Iterate loop
        Put_Line(Key(C) & " - " & Integer'Image(M(C)));
    end loop;


end Ordered_Map_Use;