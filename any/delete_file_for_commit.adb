
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Directories; use Ada.Directories;
with Ada.Containers.Indefinite_Ordered_Sets;
with Ada.Strings.Fixed;

-- 虽然看完了 introduction to ada，但是还是一头雾水。还是得靠AI
-- 
-- 保留 .ads, .adb, .md， 不过没什么用，因为 gitignore 里写了，所以无论删不删，都不会提交。
-- 现在 intro to ada 是 11.1mb
-- 
-- 。。编译器说 没有 Is_Directory。 我在文档上确实没找到。 只有个 Kind
-- 
-- 要复制到 顶层目录，并且改下后缀 使之不会被删除。。
-- `mv delete_file_for_commit ../del.ignore`
--
-- 删出后 intro to ada 只有92k。 而且 ch17下 有2个 b~ 开头的文件，这2个文件就28k了，这2个应该是自动生成的。不管它。


procedure Delete_File_For_Commit is
    Dir: constant String := ".";

    package String_Sets is new Ada.Containers.Indefinite_Ordered_Sets(Element_Type => String);
    use String_Sets;
    No_Delete_Pfx: Set;


    -- Depth 本来是为了跳过 .gitignore 所在层次的文件。 还是自己写死算了。
    procedure Dfs_Delete_File(Path: String; Depth: Integer) is
        -- Filter: constant Filter_Type := (Ordinary_File => True, others => False);
        Filter: constant Filter_Type := (Special_File => False, others => True);
        Dir_Entry: Directory_Entry_Type;
        Search: Search_Type;
        -- Tails : String(1..3);     -- 直接3了，因为 .md 是3个字符。再多的话就多一个不可控字符了。 3个字符直接Set处理算了。 。不行  .h  .c 呢。还是得取后缀
        Dot_Idx : Natural;
        -- Pfx: String(1..6) := (others => ' ');
    begin
        Put_Line("got path: " & Path);
        
        -- if not Exists(Dir) or not Is_Directory(Dir) then
        if not Exists(Path) or Kind(Path) /= Directory then
            Put_Line("ERROR: Path is not directory.");
            return;
        end if;

        Start_Search(Search, Path, "*", Filter);
        
        while More_Entries(Search) loop
            Get_Next_Entry(Search, Dir_Entry);
            -- Put_Line(Compose(Simple_Name(Dir_Entry)));
            -- Put_Line(Compose(Name => Simple_Name(Dir_Entry)));
            -- Put_Line(Simple_Name(Dir_Entry));

            -- Simple_Name 判不判断 Length 无所谓. Length不判断，因为.git, .gitignore
            if Simple_Name(Dir_Entry)(1) = '.' 
                -- and Simple_Name(Dir_Entry)'Length <= 2 
                then    -- first is 1
                -- continue;   -- 没有continue。。
                -- Put_Line(Integer'Image(Simple_Name(Dir_Entry)'First));
                goto goto_Tag_1;
            end if;

            if Directory = Kind(Dir_Entry) then
                -- Put_Line(Full_Name(Dir_Entry));
                Dfs_Delete_File(Full_Name(Dir_Entry), Depth + 1);
            else
                Dot_Idx := Ada.Strings.Fixed.Index(Simple_Name(Dir_Entry), ".", Ada.Strings.Backward);
                
                if Dot_Idx /= 0 then
                    if No_Delete_Pfx.contains(Simple_Name(Dir_Entry)(Dot_Idx .. Simple_Name(Dir_Entry)'Length)) then
                        goto goto_Tag_1;
                    end if;
                end if;
                
                -- delete 
                Put_Line("delete: " & Full_Name(Dir_Entry));
                Delete_File(Full_Name(Dir_Entry));
            end if;

            <<goto_Tag_1>>
        end loop;

        End_Search(Search);
    end;

begin

    No_Delete_Pfx.Insert(".md");
    No_Delete_Pfx.Insert(".adb");
    No_Delete_Pfx.Insert(".ads");
    No_Delete_Pfx.Insert(".c");
    No_Delete_Pfx.Insert(".h");
    No_Delete_Pfx.Insert(".cpp");
    No_Delete_Pfx.Insert(".ignore");

    Dfs_Delete_File(Dir, 0);

end Delete_File_For_Commit;