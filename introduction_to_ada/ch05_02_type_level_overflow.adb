with Ada.Text_IO; use Ada.Text_IO;

procedure ch05_02_type_level_overflow is
    type My_Int is range 1..20;
    A: My_Int := 12;
    B: My_Int := 15;
    M: My_Int := (A + B) / 2;     -- A+B=27, 但不会报错。 编译+运行 都无错

begin
    for I in 1..M loop              -- 13次
        Put_Line("hi");
    end loop;
end ch05_02_type_level_overflow;