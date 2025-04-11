
procedure ch03_06_forward_declare_subprogram is
    procedure ComputeA(V: Natural);

    procedure ComputeB(V: Natural) is
    begin
        if V > 5 then
            ComputeA(V - 1);
        end if;
    end ComputeB;

    procedure ComputeA(V: Natural) is
    begin
        if V > 2 then
            ComputeB(V - 1);
        end if;
    end ComputeA;

begin
    ComputeA(15);
end ch03_06_forward_declare_subprogram;

