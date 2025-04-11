pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package bind_test_h is

   func_cnt : aliased int  -- ./bind_test.h:1
   with Import => True, 
        Convention => C, 
        External_Name => "func_cnt";

   function my_func (arg1 : int) return int  -- ./bind_test.h:2
   with Import => True, 
        Convention => C, 
        External_Name => "my_func";

end bind_test_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
