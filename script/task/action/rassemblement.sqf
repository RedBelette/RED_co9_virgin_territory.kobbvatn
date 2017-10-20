// https://community.bistudio.com/wiki/BIS_fnc_taskSetState
["rassembler", "SUCCEEDED"] spawn BIS_fnc_taskSetState;

// create new task
call compilefinal preprocessFileLineNumbers  "script\task\task4.sqf";

task3=true;