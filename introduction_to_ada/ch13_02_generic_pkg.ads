generic
    type T is private;
package Ch13_02_generic_pkg is
    procedure Set(E:T);
    procedure Reset;
    function Get return T;
    function Is_Valid return Boolean;

    Invalid_Element: exception;
private
    Value: T;
    Valid: Boolean:= False;
end Ch13_02_generic_pkg;