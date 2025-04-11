with Ada.Text_IO; use Ada.Text_IO;

procedure Ch15_08_protected_obj_entry is
    protected Obj is
        procedure Set(V: Integer);
        entry Get(V: out Integer);    --  <<< entry Get
    private
        Local: Integer;
        Is_Set: Boolean:= False;
    end Obj;

    protected body Obj is
        procedure Set(V: Integer) is
        begin
            Local := V;
            Is_Set:= True;
        end Set;

        entry Get(V: out Integer) when Is_Set is    -- <<< entry xx when Is_Set is
        begin
            V:= Local;
            Is_Set := False;
        end Get;
    end Obj;

    N : Integer := 0;

    task T;
    task body T is
    begin
        Put_Line("task t delay 1s");
        delay 1.0;

        Put_Line("task t will set obj..");
        Obj.Set(5);                     -- 。。 Obj 还真是 Object，不是 type， 那如果 要多个 Obj呢？  这里是 锁， 所以单例没有问题
        Put_Line("task t set ok");
    end T;

begin 
    Put_Line("main app will get obj..");
    Obj.Get(N);

    Put_Line("main got " & Integer'Image(N));
end Ch15_08_protected_obj_entry;
