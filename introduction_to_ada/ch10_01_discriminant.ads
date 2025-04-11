
package Ch10_01_discriminant is
	type Items_Array is
		array (Positive range <>) of Integer;
	
	type Growable_Stack (Max_Len: Natural) is record
		Items: Items_Array(1..Max_Len);
		Len: Natural:= 0;
	end record;
	
	-- Gs: Growable_Stack;   -- error
	Gs1: Growable_Stack(5);
	-- Gs2: Growable_Stack := (5);   -- error 不知道怎么写， 下面的 P3 是可以的。
	Gs2: Growable_Stack := (5, (1,2,3, others => <>), 555);  -- ok, 要全部属性。

	type Point(X,Y: Natural) is record
		null;
	end record;

	-- P: Point;  -- error
	P2: Point (1,2);
	P3: Point := (1,3);

	type Point2(X,Y: Natural := 0) is     -- 默认值
	record
		null;
	end record;

	P4: Point2;   -- ok

end Ch10_01_discriminant;