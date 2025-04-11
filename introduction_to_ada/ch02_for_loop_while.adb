
with Ada.Text_IO; use Ada.Text_IO;

procedure ch02_for_LOOP_while is

    I: Integer := 1;    -- 不能放 begin中

begin
    for I in reverse 1..5 loop
        Put_Line("hello world" & Integer'Image (I));
    end loop;

    loop
        Put_Line("hi"&Integer'Image (I));

        exit when I = 5;
        I := I + 1;
    end loop;


    I := 1;
    while I <= 5 loop
        Put_Line("hi while!"&Integer'Image(I));
        I := I + 1;
    end loop;

end ch02_for_LOOP_while;

