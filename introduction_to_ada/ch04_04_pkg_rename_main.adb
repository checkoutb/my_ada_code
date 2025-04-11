with Ada.Text_IO;

procedure ch04_04_pkg_rename_main is
    package cout renames Ada.Text_IO;

begin
    cout.Put_Line("hi, cpp");
end ch04_04_pkg_rename_main;