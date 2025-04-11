with Ada.Text_IO; use Ada.Text_IO;
with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings; use Interfaces.C.Strings;

with pointer_h; use pointer_h;

with System;

procedure Pointer_h_main is
    Name: constant chars_ptr:= New_String("namename");
    Address: constant chars_ptr:= New_String("addr.addr");
    
    -- T: System.Address := test_create;   --    -- ads中是test，这里是System.Address。不匹配。
    
    T: access Test:= test_create;
begin
    test_reset(T);
    test_set_name(T, Name);
    test_set_address(T, Address);

    test_display(T);

end Pointer_h_main;
