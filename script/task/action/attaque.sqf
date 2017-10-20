// https://community.bistudio.com/wiki/BIS_fnc_taskSetState
["attaquer", "SUCCEEDED"] spawn BIS_fnc_taskSetState;

// create new task
call compilefinal preprocessFileLineNumbers  "script\task\task5.sqf";

task4=true;