
package body ch13_02_generic_pkg is
	procedure Set(E:T)is
	begin
		Value:= E;
		Valid:= True;
	end Set;

	procedure Reset is
	begin
		Valid:= False;
	end Reset;

	function Get return T is
	begin
		if not Valid then
			raise Invalid_Element;
		end if;
		return Value;
	end Get;

	function Is_Valid return Boolean is (Valid);
end ch13_02_generic_pkg;
