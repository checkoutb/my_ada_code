
with Ada.Text_IO; use Ada.Text_IO;

procedure ch02_declarative_region is
    X: Integer;
    Y: Integer := 5;

    procedure Nestedfun is
    begin 
        Put_Line("hi nestedfun");
    end Nestedfun;

begin
    Nestedfun;

    X := 111;

    Put_Line(Integer'Image(X));
    Put_Line(Integer'Image(Y));

    declare              -- <<--------
        A: String := Get_Line;
    
    begin                -- <<----
        Put_Line(A);
    end;

end ch02_declarative_region;