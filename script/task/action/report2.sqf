// https://community.bistudio.com/wiki/BIS_fnc_taskSetState
["terminer", "SUCCEEDED"] spawn BIS_fnc_taskSetState;

task6=true;

execVM "script\server\outro\end.sqf";