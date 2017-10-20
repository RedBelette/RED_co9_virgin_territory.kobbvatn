// https://community.bistudio.com/wiki/BIS_fnc_taskSetState
["rapport", "SUCCEEDED"] spawn BIS_fnc_taskSetState;

// create new task
call compilefinal preprocessFileLineNumbers  "script\task\task3.sqf";

task2=true;

timedWestInf=true;

timedWestHeli=true;