
package body ch12_02_hide_impl is

	procedure Push(S: in out Stack; Val: Integer) is
	begin
		null;
	end Push;

	procedure Pop(S: in out Stack; Val: out Integer) is
	begin
		Val:= 0;
	end Pop;
end ch12_02_hide_impl;