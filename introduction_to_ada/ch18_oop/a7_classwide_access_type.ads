package A7_classwide_access_type is
    type T is tagged null record;
    procedure Show(Dummy : T);
    type T_New is new T with null record;
    procedure Show(Dummy: T_New);
end A7_classwide_access_type;