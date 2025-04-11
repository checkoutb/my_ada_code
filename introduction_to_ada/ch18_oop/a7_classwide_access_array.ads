package A7_classwide_access_array is
    type T is tagged record
        E: Integer;
    end record;

    type T_Class is access T'Class;

    procedure Init(A: in out T);
    procedure Show(Dummy: T);

    type T_New is new T with null record;

    procedure Show(Dummy: T_New);
end A7_classwide_access_array;
