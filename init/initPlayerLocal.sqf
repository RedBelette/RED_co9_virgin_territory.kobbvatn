// Ce script s'exécute localement quand le joueur rejoins la mission (inclus pour le début de partie)
MIS_fnc_initTaskRegistry = compile loadFile "function\MIS_fnc_initTaskRegistry.sqf";
MIS_fnc_registerTask = compile loadFile "function\MIS_fnc_registerTask.sqf";
MIS_fnc_createTask = compile loadFile "function\MIS_fnc_createTask.sqf";

TGV_fnc_action = compile loadFile "library\function\server\cronjob\TGV_fnc_action.sqf";

["side cursorObject == east", "spotted=true; publicVariable 'spotted';"] call TGV_fnc_action;