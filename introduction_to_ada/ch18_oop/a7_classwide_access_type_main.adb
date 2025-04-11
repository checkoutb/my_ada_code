with A7_classwide_access_type; use A7_classwide_access_type;

procedure A7_classwide_access_type_main is
    T2 : T_New;
    T_Dispatch: constant T'Class := T2;

begin
    T_Dispatch.Show;
end A7_classwide_access_type_main;