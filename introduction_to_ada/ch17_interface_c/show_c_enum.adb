procedure Show_c_enum is

    type C_Enum is (A,B,C)
        with Convention => C;         -- 使用 C 转换

begin
    null;
end Show_c_enum;