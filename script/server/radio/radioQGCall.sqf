if (isNil "spotted") exitWith {
	["script\client\radio\badResponse1.sqf", false] call TGV_fnc_execScriptOnClients;
};

if (!isNil "spottedAlreadyDone" and isNil "reddition" and isNil "bivouacFinded") exitWith {
	["script\client\radio\badResponse2.sqf", false] call TGV_fnc_execScriptOnClients;
};

if (spotted) then {
	hqWasContacted=true;
	spottedAlreadyDone=true;
};

if (isNil "reddition" and isNil "bivouacFinded") exitWith {};

if (reddition and bivouacFinded) then {
	missionEnding=true;
	endAlreadyDone=true;
};