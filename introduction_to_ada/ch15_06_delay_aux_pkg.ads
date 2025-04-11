with Ada.Real_Time; use Ada.Real_Time;

package Ch15_06_delay_aux_pkg is
    function Get_Start_Time return Time 
        with Inline;

    procedure Show_Elasped_Time
        with Inline;
    
    procedure Compute_App;

private
    Start_Time: Time := Clock;

    function Get_Start_Time return Time is 
        (Start_Time);
end Ch15_06_delay_aux_pkg;