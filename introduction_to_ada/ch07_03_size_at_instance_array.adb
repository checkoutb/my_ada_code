
with Ada.Text_IO; use Ada.Text_IO;

procedure Ch07_03_size_at_instance_array is

    type Days is (D1, D2, D3, D4, D5, D6, D7);

    type Workload_Type is 
        array (Days range <>) of Natural;
    
    Workload: constant Workload_Type (D1 .. D5) := (D4 => 4, others => 8);   -- instance时 才知道 size

begin

    for I in Workload'Range loop
        Put_Line(Integer'Image(Workload(I)));
    end loop;

    for I in Workload'First .. Workload'Last loop     -- 无法-1，类型不匹配
        Put_Line(Integer'Image(Workload(I)));
    end loop;
end Ch07_03_size_at_instance_array;


