
package Ch09_01_pointer is
    type Months is (M1,M2,M3,M4,M5,M6,M7,M8,M9,M10,M11,M12);

    type Date is record
        Day: Integer range 1..31;
        Month: Months;
        Year: Integer;
    end record;
end Ch09_01_pointer;