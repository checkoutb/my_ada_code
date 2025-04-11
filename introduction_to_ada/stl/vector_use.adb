with Ada.Containers.Vectors;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Containers;

procedure Vector_Use is
    package Integer_Vectors is 
        new Ada.Containers.Vectors (
            Index_Type => Natural, Element_Type => Integer);

    package Integer_Vectors_Sorting is new Integer_Vectors.Generic_Sorting;
    use Integer_Vectors_Sorting;

    function Img(I: Integer) return String renames Integer'Image;

    procedure Add_One(I: in out Integer) is
    begin
        I := I + 1;
    end Add_One;

    use Integer_Vectors;                     -- must
    V: Integer_Vectors.Vector := 20 & 10 & 40;

    Idx: Extended_Index;
    C: Cursor;

    V1,V2,V3: Vector;


--    package String_Vectors is
--        new Ada.Containers.Vectors(Index_Type => Natural, Element_Type => String);
        -- 编译失败： actual for "Element_Type" must be a definite subtype



begin
    
    Put_Line("vector size: " & Ada.Containers.Count_Type'Image(V.Length));

    V.Append(111);
    --V.Append(222);

    --V.Prepend(-111);
    V.Prepend(-222);

    Put_Line(Img(V.First_Element) & ", " & Img(V.Last_Element));
    V.Swap(V.First, V.Last);        -- 交换位置
    Put_Line(Img(V.First_Element) & ", " & Img(V.Last_Element));

    for E of V loop    -- ref,so can change
        E := E + 1;
    end loop;

    for E of V loop
        Put_Line(Img(E));
    end loop;

    for I in V.First_Index .. V.Last_Index loop      -- 从0开始！！！
        V(I) := V(I) + 1;                         -- change
        Put_Line(Extended_Index'Image(I) & ": " & Img(V(I)));
    end loop;

    -- --------------------
    for C in V.Iterate loop
        V(C) := V(C) + 1;                            -- change
        V.Update_Element(C, Add_One'Access);     -- !!
        Put_Line(Extended_Index'Image(To_Index(C)) & " -- " & Integer'Image(V(C)));
    end loop;

    declare
        C: Cursor := V.First;
    begin
        while C /= No_Element loop
            V(C) := V(C) + 1;                        -- change
            Put_Line(Extended_Index'Image(To_Index(C)) & " == " & Integer'Image(V(C)));
            C := Next(C);
        end loop;
    end;

    -- -------------------  find
    
    Idx := V.Find_Index(15);
    Put_Line("index of 15 is " & Extended_Index'Image(Idx));

    C := V.Find(25);
    Idx := To_Index(C);
    Put_Line(Extended_Index'Image(Idx));

    V.Replace_Element(C, 223311);
    Put_Line(Img(V(C)));

    -- --------- if cannot find, Idx is No_Index, C is No_Element;
    Idx := V.Find_Index(445566);
    if Idx = No_Index then
        Put_Line("cannot find ");
    end if;

    C := V.Find(556677);
    if C = No_Element then
        Put_Line("no find");
    end if;

    -- ---------------------- insert

    C := V.Find(223311);
    if C /= No_Element then
        V.Insert(C, 99999);
    end if;


    for E of V loop
        Put_Line(" --- " & Img(E));
    end loop;

    --  -------------- remove

    Idx := V.Find_Index(15);
    if Idx /= No_Index then
        V.Delete(Idx);
    end if;

    C := V.Find(-217);
    if C /= No_Element then
        V.Delete(C);
    end if;

    -- 可以通过 loop 来循环删除所有的 该值的 元素。
    loop
        Idx := V.Find_Index(45);     -- Find 也类似
        exit when Idx = No_Index;
        V.Delete(Idx);
    end loop;

    for E of V loop
        Put_Line(" ==== " & Img(E));
    end loop;


    --  -----------------  vector+vector, merge, sort
    V1 := 2 & 7 & 5;
    V2 := (-2) & 100 & (-100);       -- 取负 需要 括号
    V3 := 55 & 88 & 66;

    V1 := V1 & V2 & V3;
    for E of V1 loop
        Put(Img(E) & ", ");
    end loop;
    New_Line;

    Sort(V1);
    for E of V1 loop
        Put(Img(E) & "; ");
    end loop;
    New_Line;

    Put_Line("vector size: " & Ada.Containers.Count_Type'Image(V2.Length));

    Merge(V1, V2);                  -- merge 是把 V2的元素 移 动 到 V1中，位置随机。
    for E of V1 loop
        Put(Img(E) & ". ");
    end loop;
    New_Line;

    Put_Line("vector size: " & Ada.Containers.Count_Type'Image(V2.Length));

    Merge(V2, V3);
    for E of V2 loop
        Put(Img(E) & "- ");
    end loop;

end Vector_Use;
