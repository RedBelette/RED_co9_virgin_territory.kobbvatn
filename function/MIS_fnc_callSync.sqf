params ["_returnVarName","_key"];

{ [_returnVarName, _key] execVM "script\server\sync\clientSync.sqf" } remoteExec ["call", 2];