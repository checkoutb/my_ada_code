with Ada.Text_IO; use Ada.Text_IO;

with Ada.Numerics.Float_Random;   -- use Ada.Numerics.Float_Random;
with Ada.Numerics.Discrete_Random;

procedure D_Random_Number is
    G: Ada.Numerics.Float_Random.Generator;
    X: Ada.Numerics.Float_Random.Uniformly_Distributed;      -- 0.0 - 1.0  Float

    --------------- random discrete number 
    subtype Random_Range is Integer range 1..10;
    package R is new 
        Ada.Numerics.Discrete_Random(Random_Range);
    use R;

    X2: Random_Range;
    G2: R.Generator;

begin
    Ada.Numerics.Float_Random.Reset(G);

    Put_Line(Float'Image(Ada.Numerics.Float_Random.Uniformly_Distributed'First) & " - " & Float'Image(Ada.Numerics.Float_Random.Uniformly_Distributed'Last));
    for i in 1..5 loop
        X := Ada.Numerics.Float_Random.Random(G);
        Put_Line(Float'Image(X));
    end loop;


    ----------------- random discrete

    R.Reset(G2);
    Put_Line(Integer'Image(Random_Range'First) & "   " & Integer'Image(Random_Range'Last));
    for i in 1..5 loop
        X2 := R.Random(G2);
        Put_Line(Integer'Image(X2));
    end loop;

end D_Random_Number;