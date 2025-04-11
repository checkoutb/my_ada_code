with Ada.Containers; use Ada.Containers;
with Ada.Containers.Ordered_Sets;
with Ada.Text_IO; use Ada.Text_IO;

procedure Set_use is 

    package Integer_Sets is new Ada.Containers.Ordered_Sets(Element_Type => Integer);
    use Integer_Sets;

    S: Set;
    C: Cursor;
    Ins: Boolean;

begin

    S.Insert(20);
    S.Insert(10);
    S.Insert(0);
    -- S.Insert(0);     -- raise exception
    S.Insert(0, C, Ins);
    if not Ins then
        Put_Line("error @ insert 0");   -- yes, not insert
    end if;

    S.Include(0);   -- won't raise exception, just do nothing.
    S.Include(30);

    Put_Line("size: " & Count_Type'Image(S.Length));

    for E of S loop
        Put_Line(" -- " & Integer'Image(E));
    end loop;

    --  ----------------------- delete, exclude; --- contains, find

    S.Delete(20);  
    -- S.Delete(20);    -- raise exception
    S.Exclude(20);     -- no exception, do nothing.

    if S.Contains(30) then
        Put_Line("contain 30");
    end if;

    if S.Find(0) /= No_Element then
        Put_Line("find 0");
    end if;


    --  ------------- 集合操作， union: or; intersection: and; difference: -; symmetric difference: xor
    --  S := S1 or/and/-/xor S2;


    for E of S loop
        Put_Line(" - " & Integer'Image(E));
    end loop;

end Set_use;