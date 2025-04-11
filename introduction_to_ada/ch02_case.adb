
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure ch02_case is
    N: Integer;
begin
    loop
        Put("enter an integer: ");
        Get(N);
        Put(N);

        case N is
            when 0|100 =>
                Put_Line(" is 0 or 100");
            when 1..20 =>
                Put_Line(" is 1..20");
            when others =>
                Put_Line(" no 0,100,1..20, exit");
                exit;
        end case;
    end loop;
end ch02_case;

