// https://community.bistudio.com/wiki/BIS_fnc_taskSetState
["bivouac", "SUCCEEDED"] spawn BIS_fnc_taskSetState;

// create new task
call compilefinal preprocessFileLineNumbers  "script\task\task6.sqf";

task5=true;