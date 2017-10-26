
// Initialise les fonctions de la mission (peuvent être remontée dans le framework)
MIS_fnc_inVehicle = compile loadFile "function\MIS_fnc_inVehicle.sqf";
MIS_fnc_reddition = compile loadFile "function\MIS_fnc_reddition.sqf";

MIS_fnc_callFunctionOnClients = compile loadFile "function\MIS_fnc_callFunctionOnClients.sqf";

MIS_fnc_isPlayerNearEntity = compile loadFile "function\MIS_fnc_isPlayerNearEntity.sqf";

MIS_fnc_clientSync = compile loadFile "function\MIS_fnc_clientSync.sqf";

// Permet de démarrer en début de matinée
// skipTime -4.5;

// Ce script équipe les ennemis de lampe torche sur leur arme principal
{
	if (side _x == east) then {
		_x addPrimaryWeaponItem "rhs_acc_2dpZenit";
		_x unassignItem "NVGoggles";
		_x removeItem "NVGoggles";
		_x enablegunlights "forceOn"
	};
} forEach allUnits;

// Tache de départ
call compilefinal preprocessFileLineNumbers  "script\task\task1.sqf";

// Résolution des taches
["startTheGame and spotted", "execVM 'script\task\action\traquer.sqf'"] call TGV_fnc_action;
["startTheGame and task1 and hqWasContacted", "execVM 'script\task\action\report1.sqf'"] call TGV_fnc_action;
["startTheGame and task2 and rally", "execVM 'script\task\action\rassemblement.sqf'"] call TGV_fnc_action;
["startTheGame and task3 and reddition", "execVM 'script\task\action\attaque.sqf'"] call TGV_fnc_action;
["startTheGame and task4 and bivouacFinded", "execVM 'script\task\action\bivouac.sqf'"] call TGV_fnc_action;
["startTheGame and task5 and missionEnding", "execVM 'script\task\action\report2.sqf'"] call TGV_fnc_action;

// Renfort timé
["task1 and hqWasContacted and timedWestInf", "westInf=true;", 300] call TGV_fnc_timedAction;
["task1 and hqWasContacted and timedWestHeli", "westHeli=true;", 1800] call TGV_fnc_timedAction;

// --- Configuration de l'infantrie allié
// Cette action forcera les alliés à se rendrent aux combats lorsque la variable westInf sera sur true
["westInf", "execVM 'script\server\unitcontrol\westInfantrySeekAndDestroy.sqf'"] call TGV_fnc_action;
// --- Fin configuration de l'infantrie allié

// --- Configuration des hélico
// Cette action forcera les hélico alliés à se rendrent aux combats lorsque la variable westInf sera sur true
// La zone de combat des hélico sera raffraichie toutes les x secondes.
_heliOnPlayerAction = ["[getPos player] execVM 'script\server\unitcontrol\westHelicotSeekAndDestroy.sqf'", 60] call TGV_fnc_repeatedAction; // Création de l'action répété

call TGV_fnc_initActionRegistry; // Création du registre des actions
["heliOnPlayerAction", _heliOnPlayerAction] call TGV_fnc_registerAction; // Enregistrement de l'action dans le registre
["heliOnPlayerAction"] call TGV_fnc_stopAction; // L'action est stopper au démarrage de la mission

["westHeli", "['heliOnPlayerAction'] call TGV_fnc_runAction"] call TGV_fnc_action; // Création de l'action pour redémarrer l'action ci dessus.

// --- Fin configuration des hélico


// 20 + 12 (intro)
["[32, east] call MIS_fnc_reddition", 25] call TGV_fnc_repeatedAction;

// Passer le temp
/*["skipTime1", "[8.5] execVM 'script\server\time\skipTime.sqf'"] call TGV_fnc_action;
["skipTime2", "[1.5] execVM 'script\server\time\skipTime.sqf'"] call TGV_fnc_action;
["skipTime3", "[0.5] execVM 'script\server\time\skipTime.sqf'"] call TGV_fnc_action;
["skipTime4", "[8] execVM 'script\server\time\skipTime.sqf'"] call TGV_fnc_action;
["skipTime5", "[4] execVM 'script\server\time\skipTime.sqf'"] call TGV_fnc_action;
["skipTime6", "[10] execVM 'script\server\time\skipTime.sqf'"] call TGV_fnc_action;
["skipTime7", "[12.2] execVM 'script\server\time\skipTime.sqf'"] call TGV_fnc_action;*/

["skipTime2", "[12] execVM 'script\server\time\skipTime.sqf'"] call TGV_fnc_action;
["skipTime6", "[21] execVM 'script\server\time\skipTime.sqf'"] call TGV_fnc_action;
["skipTime7", "[11.8] execVM 'script\server\time\skipTime.sqf'"] call TGV_fnc_action;