// https://community.bistudio.com/wiki/BIS_fnc_taskSetState
["traquer", "SUCCEEDED"] spawn BIS_fnc_taskSetState;

// create new task
call compilefinal preprocessFileLineNumbers  "script\task\task2.sqf";

task1=true;