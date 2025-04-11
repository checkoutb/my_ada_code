with Ada.Text_IO; use Ada.Text_IO;
with Ada.Calendar; use Ada.Calendar;
with Ada.Containers.Vectors;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

procedure Ch16_03_dynamic_predicate is

    package Courses is
        type Course_Cont is private;
        type Course is record
            Name : Unbounded_String;
            Start : Time;
            End_1 : Time;                   -- <<< End 会被识别了 end关键字。。。
        end record
            with Dynamic_Predicate => Course.Start <= Course.End_1;     -- <<<<
        
        procedure Add(CC: in out Course_Cont; C : Course);
    private
        package Course_Vectors is new Ada.Containers.Vectors
            (Index_Type => Natural, Element_Type => Course);
        
        type Course_Cont is record
            V: Course_Vectors.Vector;
        end record;
    end Courses;

    package body Courses is
        procedure Add(CC: in out Course_Cont; C: Course) is
        begin
            CC.V.Append(C);
        end Add;
    end Courses;

    use CoursEs;                -- <<<<
    CC: Course_Cont;

begin
    Add(CC, Course'(
        Name => To_Unbounded_String("intro to ada"),
        Start => Time_Of(2022,2,2),
        end_1 => Time_Of(2022,2,5)    -- end_1
    ));

    Add(CC, Course'(
        Name => To_Unbounded_String("a bad course"),
        Start => Time_Of(2022,2,2),
        end_1 => Time_Of(2022,2,1)
    ));
end Ch16_03_dynamic_predicate;