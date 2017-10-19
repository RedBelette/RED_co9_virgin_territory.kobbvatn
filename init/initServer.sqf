
// Initialise les fonctions de la mission (peuvent être remontée dans le framework)
MIS_fnc_inVehicle = compile loadFile "function\MIS_fnc_inVehicle.sqf";
MIS_fnc_reddition = compile loadFile "function\MIS_fnc_reddition.sqf";

MIS_fnc_callFunctionOnClients = compile loadFile "function\MIS_fnc_callFunctionOnClients.sqf";

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

// --- Configuration de l'infantrie allié
// Cette action forcera les alliés à se rendrent aux combats lorsque la variable westInf sera sur true
westInf = false;
["westInf", "execVM 'script\server\unitcontrol\westInfantrySeekAndDestroy.sqf'"] call TGV_fnc_action;
// --- Fin configuration de l'infantrie allié

// --- Configuration des hélico
// Cette action forcera les hélico alliés à se rendrent aux combats lorsque la variable westInf sera sur true
// La zone de combat des hélico sera raffraichie toutes les x secondes.
westHeli = false;
_heliOnPlayerAction = ["[getPos player] execVM 'script\server\unitcontrol\westHelicotSeekAndDestroy.sqf'", 60] call TGV_fnc_repeatedAction; // Création de l'action répété

call TGV_fnc_initActionRegistry; // Création du registre des actions
["heliOnPlayerAction", _heliOnPlayerAction] call TGV_fnc_registerAction; // Enregistrement de l'action dans le registre
["heliOnPlayerAction"] call TGV_fnc_stopAction; // L'action est stopper au démarrage de la mission

["westHeli", "['heliOnPlayerAction'] call TGV_fnc_runAction"] call TGV_fnc_action; // Création de l'action pour redémarrer l'action ci dessus.

// --- Fin configuration des hélico

["[20, east] call MIS_fnc_reddition", 25] call TGV_fnc_repeatedAction;