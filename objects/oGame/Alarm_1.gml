global.time += 0.01;
if ceil(global.time) - global.time == 0.4 global.time = ceil(global.time)
if global.time >= 25 global.time = 1
if global.time >= 9 && global.time <= 16 global.daylight = 0;
if global.time == 17 global.daylight = 0.1;
if global.time == 18 global.daylight = 0.25;
if global.time == 19 global.daylight = 0.4;
if global.time == 20 global.daylight = 0.55;
if global.time >= 21 && global.time <= 24 global.daylight = 0.7;
if global.time >= 1 && global.time <= 4 global.daylight = 0.7;
if global.time == 8 global.daylight = 0.1;
if global.time == 7 global.daylight = 0.25;
if global.time == 6 global.daylight = 0.4;
if global.time == 5 global.daylight = 0.55;

alarm[1] = game_get_speed(gamespeed_fps)*2



