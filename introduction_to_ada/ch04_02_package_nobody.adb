
package body ch04_02_package_nobody is
	Last_Incr: Integer:= 1;

	function Incr_By(I: Integer; Incr: Integer:= 0) return Integer is
	begin
		if Incr /= 0 then
			Last_Incr := Incr;
		end if;
		return I + Last_Incr;
	end Incr_By;

	function Get_Incr return Integer is
	begin
		return Last_Incr;
	end Get_Incr;
end ch04_02_package_nobody;