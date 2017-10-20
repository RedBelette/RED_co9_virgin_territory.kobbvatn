// https://community.bistudio.com/wiki/BIS_fnc_taskSetState
["rapport", "SUCCEEDED"] spawn BIS_fnc_taskSetState;

// https://community.bistudio.com/wiki/BIS_fnc_taskCreate
[
	blufor,
	"rassembler",
	["Faites jonctions aux coordonnées 074999.", "Se rassembler"],
	objNull,
	true,
	0,
	true,
	"meet",
	false
] call BIS_fnc_taskCreate;