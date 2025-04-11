
with Ada.Text_IO; use Ada.Text_IO;

procedure Ch05_03_enum is
    type Days is (Q,W,E,R,T,Y);

begin
    for I in Days loop
        case I is
            when R..Y =>
                Put_Line("last 3");
            when Q..E =>
                Put_Line("hello on" & Days'Image(I));
        end case;
    end loop;
end Ch05_03_enum;
