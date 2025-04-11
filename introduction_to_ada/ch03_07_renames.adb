
with ch03_04_nested_subprogram;

procedure ch03_07_renames is

    -- My_Fun_Rename() 加上 () 反而错的。
    procedure My_Fun_Rename renames ch03_04_nested_subprogram;

begin
    My_Fun_Rename;
end ch03_07_renames;
