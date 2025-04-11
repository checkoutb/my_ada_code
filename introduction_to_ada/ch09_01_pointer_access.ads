with Ch09_01_pointer; use Ch09_01_pointer;

package Ch09_01_pointer_access is

-- --- declare
    type Date_Acc is access Date;     -- Date_Acc 指向了 Date
    type Date_Acc_2 is access Date;
    D: Date_Acc := null;
    --D2: Date_Acc_2 := D;            -- error, 不同类型

-- -----------------  init

    D2: Date_Acc_2 := new Date;   -- ok, 但是 这里new的啊， 有办法 ref 到已有值吗？

    type String_Acc is access String;
    Msg: String_Acc;
    Buffer: String_Acc := new String(1..10);

    D3 : Date_Acc := new Date'(1,M1,2011);   -- allocate 时 init
    Msg2: String_Acc := new String'("hello");

-- -------------------  deref

    --J: Integer := D.Day;     -- error, null value not allowed
    J: Integer := D2.Day;   -- field
    Dref: Date := D2.all;   -- all

end Ch09_01_pointer_access;

-- gnatmake 这个文件 可以编译
