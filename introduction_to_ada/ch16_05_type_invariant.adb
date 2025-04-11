with Ada.Text_IO; use Ada.Text_IO;
with Ada.Calendar; use Ada.Calendar;

with Ada.Containers.Vectors;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

procedure Ch16_05_type_invariant is

    package Courses is 
        type Course is private with Type_Invariant => Check(Course);     -- raise a error
        type Course_Cont is private;

        procedure Add (CC: in out Course_Cont; C: Course);

        function Init(Name: String; Start_Date, End_Date: Time) return Course;

        function Check(C: Course) return Boolean;

    private 
        type Course is record
            Name : Unbounded_String;
            Start_Date: Time;
            End_Date: Time;
        end record;

        function Check(C: Course) return Boolean is 
            (C.Start_Date <= C.End_Date);
        
        package Course_Vectors is new Ada.Containers.Vectors
            (Index_Type => Natural, Element_Type => Course);
        
        type Course_Cont is record
            V: Course_Vectors.Vector;
        end record;
    end Courses;

    package body Courses is 
        procedure Add (CC: in out Course_Cont; C: Course) is
        begin
            CC.V.Append(C);
        end Add;

        function Init(Name: String; Start_Date, End_Date: Time) return Course is
        begin
            return Course'(
                Name => To_Unbounded_String(Name),
                Start_Date => Start_Date,
                End_Date => End_Date
            );
        end Init;
    end Courses;

    use Courses;
    CC: Course_Cont;

begin
    Add (CC, Init("aaaaa", Time_Of(2022,2,2), Time_Of(2022,3,3)));

    Add (CC, Init("bbbbb", Time_Of(2022,2,2), Time_Of(2022,2,1)));

end Ch16_05_type_invariant;
