
package Ch06_02_rename_field is

	type Months is (M1,M2,M3,M4,M5,M6,M7,M8,M9,M10,M11,M12);

	type Date is record
		Day: Integer range 1..31;
		Month: Months;
		Year: Integer range 1..3000 := 2022;
	end record;

	procedure Inc_Month(Some_Day: in out Date);
	procedure Display_Month(Some_Day: Date);
end Ch06_02_rename_field;