package A01_tagged_type is
    type My_Class is tagged null record;   -- tagged

    procedure Foo(Self: in out My_Class);  -- 同一个包中的procedure 会是 类的method

    type Derived is new My_Class with record
        A: Integer;                         -- 子类中增加属性
    end record;

    overriding                      -- 重载父类的方法。
    procedure Foo(Self: in out Derived);
end A01_tagged_type;
