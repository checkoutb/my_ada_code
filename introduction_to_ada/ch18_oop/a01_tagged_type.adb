with Ada.Text_IO; use Ada.Text_IO;

package body A01_tagged_type is
    procedure Foo(Self: in out My_Class) is
    begin
        Put_Line("my class");
    end Foo;

    procedure Foo(Self: in out Derived) is
    begin
        Put_Line("Derived");
    end Foo;
end A01_tagged_type;