with A01_tagged_type; use A01_tagged_type;

procedure A02_assign is

    O1: My_Class;
    O2: Derived := (A=>12);
    O3: My_Class'Class := O2;
    O4: My_Class := My_Class(O2);

begin 
    Foo(O1);
    Foo(O2);
    Foo(O3);
    O4.Foo;
end A02_assign;
