with Ada.Text_IO; use Ada.Text_IO;
with Ada.Calendar; use Ada.Calendar;

with Ada.Calendar.Formatting; use Ada.Calendar.Formatting;
with Ada.Calendar.Time_Zones; use Ada.Calendar.Time_Zones;

procedure A_Calendar_Use is
    Now: Time := Clock;             -- 0时区的。

    Now_Year: Year_Number;
    Now_Month: Month_Number;
    Now_Day: Day_Number;
    Now_Seconds: Day_Duration;

    ---------------------

    TZ: Time_Offset := UTC_Time_Offset;
    -- TZ: Time_Offset := BJT_Time_Offset;  -- 没有 BJT。。
    Next: Time := Ada.Calendar.Formatting.Time_Of(
        Year => 2025, Month => 4, Day => 9, Hour => 17, 
        Minute => 35,
        Second => 0,
        Sub_Second => 0.0, Leap_Second => False, Time_Zone => TZ
    );      -- 有点奇怪，这里时区是UTC，但是 上面的 Hour 是北京时间的， 可以正常等待， 如果改成 0时区，就是 hour 是 9， 运行的时候 立刻wake up，因为9 点早过了。
                -- 所以这个 TZ 有什么用？  而且，下面有2个 Image(Now), 不带时区 就是 0时区的时间，带上 TZ 就是 北京时间。
        -- 看书上，大意是 带上 TZ 是local time，不带就是 0时区。 。。？ 那我怎么改时区？

    Next2: Time := Ada.Calendar.Formatting.Value("2025-04-09 17:43:00", TZ);

    -------------------------

    D: Duration := 5.0;
    Next3 : Time := Now + D;


begin
    Put_Line(Image(Now));

    Split(Now, Now_Year, Now_Month, Now_Day, Now_Seconds);

    Put_Line(Year_Number'Image(Now_Year));
    Put_Line(Month_Number'Image(Now_Month));
    Put_Line(Day_Number'Image(Now_Day));
    Put_Line(Day_Duration'Image(Now_Seconds));    -- 这个秒数 是 北京时间 今天已经过了多少秒。  所以Split 的时候 会将 Now 转时区？ 。不，应该 Now 本身自带时区，只不过不知道怎么看吧？


    -------------

    Put_Line("will wait until " & Image(Next, True, TZ));

    delay until Next;    ----------------

    Put_Line("wake up ...");

    Put_Line("will wait 2 " & Image(Next2, True, TZ));

    delay until Next2;

    Put_Line("wake up 2.");

    -----------------------

    Put_Line("wait second: " & Duration'Image(D));

    delay until Next3;
    Put_Line("wake up333");

end A_Calendar_Use;