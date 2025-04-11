with Ch13_03_formal_subprogram;

procedure Ch13_03_formal_subprogram_main is
    A,B : Integer;

    procedure Check_Eq is new Ch13_03_ForMal_Subprogram(Desc => "equality",
            T => Integer,
            Comparison => Standard."=");    -- Standard."="

begin 
    A := 0;
    B := 1;
    Check_Eq(A, B);
    A := 1;
    Check_Eq(A, B);
end Ch13_03_formal_subprogram_mAin;