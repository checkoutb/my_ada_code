pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

package pointer_h is

   type test is null record;   -- incomplete struct

   function test_create return access test  -- ./pointer.h:3
   with Import => True, 
        Convention => C, 
        External_Name => "test_create";

   procedure test_destory (arg1 : access test)  -- ./pointer.h:5
   with Import => True, 
        Convention => C, 
        External_Name => "test_destory";

   procedure test_reset (arg1 : access test)  -- ./pointer.h:7
   with Import => True, 
        Convention => C, 
        External_Name => "test_reset";

   procedure test_set_name (t : access test; name : Interfaces.C.Strings.chars_ptr)  -- ./pointer.h:9
   with Import => True, 
        Convention => C, 
        External_Name => "test_set_name";

   procedure test_set_address (arg1 : access test; arg2 : Interfaces.C.Strings.chars_ptr)  -- ./pointer.h:11
   with Import => True, 
        Convention => C, 
        External_Name => "test_set_address";

   procedure test_display (arg1 : access constant test)  -- ./pointer.h:13
   with Import => True, 
        Convention => C, 
        External_Name => "test_display";

end pointer_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
