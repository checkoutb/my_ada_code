with Ada.Text_IO; use Ada.Text_IO;

procedure Ch15_07_protected_object is
    protected Obj is 
        procedure Set(V: Integer);
        function Get return Integer;
    private 
        Local: Integer := 0;
    end Obj;

    protected body Obj is
        procedure Set(V: Integer) is
        begin 
            Local := V;
        end Set;

        function Get return Integer is
        begin
            -- Local:= 100;   -- error: function cannot modify protected object.
            return Local;
        end Get;
    end Obj;

begin
    Obj.Set(5);
    Put_Line("get: " & Integer'Image(Obj.Get));
end Ch15_07_protected_object;
