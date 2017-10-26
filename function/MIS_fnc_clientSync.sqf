params ["_returnVarName","_key"];

diag_log ["MIS_fnc_clientSync", _returnVarName, _key];

diag_log ["MIS_fnc_clientSync isNil test", isNil "clientSyncMap"];

if (isNil "clientSyncMap") then {

	_clientSyncMap = ["new", []] call OO_HASHMAP;

	missionNamespace setVariable ["clientSyncMap", _clientSyncMap];

};

diag_log ["MIS_fnc_clientSync checkclientsync", isNil "clientSyncMap"];

_clientSyncMap = missionNamespace getVariable "clientSyncMap";

_numberOfClient = 1;
_verifyKey = ["containsKey", _key] call _clientSyncMap;
if (_verifyKey) then {
	diag_log["MIS_fnc_clientSync key found"];
	_numberOfClient = (["Get", _key] call _clientSyncMap) + 1;
};

diag_log["MIS_fnc_clientSync _numberOfClient ", _numberOfClient, count allPlayers];

["Put", [_key, _numberOfClient]] call _clientSyncMap;

if (_numberOfClient >= count allPlayers) then {
	diag_log["MIS_fnc_clientSync var setted ",_returnVarName, _numberOfClient];
	missionNamespace setVariable [_returnVarName, _numberOfClient];
	publicVariable _returnVarName;
};