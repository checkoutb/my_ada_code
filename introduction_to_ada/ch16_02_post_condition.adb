with Ada.Text_IO; use Ada.Text_IO;

procedure Ch16_02_post_condition is
    type Int8 is range -2 ** 7 .. 2 ** 7 - 1;
    type Int8_Arr is array(Integer range <>) of Int8;
    function Square(A: Int8) return Int8 is
        (A * A)                                -- 这是什么写法？
            with Post => (if abs A in 0|1               -- in 0|1 ..
                            then Square'Result = abs A
                            else Square'Result > A);        -- 'Result

    procedure Square (A: in out Int8_Arr)
        with Post => (for all I in A'Range =>
                        A(I) = A'Old(I) * A'Old(I))         -- 'Old
    is
    begin
        for V of A loop
            V:= Square(V);
        end loop;
    end Square;

    V: Int8_Arr := (-2,-1,0,1,2,10,11);

begin
    for E of V loop
        Put_Line("origin: " & Int8'Image(E));
    end loop;

    New_Line;

    Square(V);
    for E of V loop
        Put_Line("Square: " & Int8'Image(E));
    end loop;
end Ch16_02_post_condition;