with Ada.Text_IO;use Ada.Text_IO;

procedure Ch15_11_protected_type is
    protected type P_TT is
        procedure Set(V: Integer);
        function Get return Integer;
    private
        Local: Integer := 0;
    end P_TT;

    protected body P_TT is
        procedure Set(V: Integer) is
        begin
            Local := V;
        end Set;

        function Get return Integer is
        begin
            return Local;
        end Get;
    end P_TT;

    Obj: P_TT;

begin
    Obj.Set(5);
    Put_Line("got " & Integer'Image(Obj.Get));
end Ch15_11_protected_type;