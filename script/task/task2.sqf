// https://community.bistudio.com/wiki/BIS_fnc_taskSetState
["traquer", "SUCCEEDED"] spawn BIS_fnc_taskSetState;

// https://community.bistudio.com/wiki/BIS_fnc_taskCreate
[
	blufor,
	"rapport",
	["Attention, vous avez localisé les forces ennemies. Vous devez contacter le QG pour préparer la riposte.", "Au rapport"],
	objNull,
	true,
	0,
	true,
	"documents",
	false
] call BIS_fnc_taskCreate;