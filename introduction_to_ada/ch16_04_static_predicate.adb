with Ada.Text_IO; use Ada.Text_IO;

procedure Ch16_04_static_predicate is
    type Week is (D1,D2,D3,D4,D5,D6,D7);
    
    subtype Work_Week is Week range D1..D5;

    subtype Test_Days is Work_Week
        with Static_Predicate => Test_Days in D1 | D3 | D5;
    
    type Test_Week is array(Week) of Natural
        with Dynamic_Predicate => (for all I in Test_Week'Range =>
            (case I is
                when Test_Days => Test_Week(I) > 0,
                when others => Test_Week(I) = 0));
    
    Num_Test: Test_Week := (D1=>3, D2=>0, D3=>4, D4=>0, D5=>2, D6=>0, D7=>0);
    
    procedure Display_Test(N: Test_Week) is
    begin 
        for I in Test_Days loop
            Put_Line(Test_Days'Image(I) & " => " & Integer'Image(N(I)));
        end loop;
    end Display_Test;

begin

    Display_Test(Num_Test);

    Num_Test(D2) := 2;

    Display_Test(Num_Test);    -- will fail   raise a error

end Ch16_04_static_predicate;