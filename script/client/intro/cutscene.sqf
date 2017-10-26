_defaultViewDistance = viewDistance;

titleCut [" ", "BLACK OUT", 1];

sleep 1;

{
	_x synchronizeObjectsAdd [player];
} forEach units cutGroup1;

{
	_x synchronizeObjectsAdd [player];
} forEach units cutGroup2;

{
	_x synchronizeObjectsAdd [player];
} forEach units cutGroup3;

{
	_x synchronizeObjectsAdd [player];
} forEach units cutGroup4;

{
	_x synchronizeObjectsAdd [player];
} forEach units cutGroup5;

{
	_x synchronizeObjectsAdd [player];
} forEach units cutGroup6;


setViewDistance 12000;

sleep 3;

playMusic "silverchair";

titleCut [" ", "BLACK IN", 10];

_camera = "camera" camcreate getPos cam1start;
_camera cameraEffect ["internal", "back"];
_camera camSetPos getPos cam1stop;
_camera camCommit 11;

sleep 10;

titleCut [" ", "BLACK OUT", 0];

hint "phase 1";

sleep 0.5;

titleCut [" ", "BLACK IN", 0];

_posCam = getPos leader cutGroup1;
_posCam = [_posCam select 0, (_posCam select 1) + 10, 0.5];

_camera = "camera" camcreate _posCam;
_camera cameraEffect ["internal", "back"];
_camera camSetTarget leader cutGroup1;
_camera camCommit 5;

waitUntil {camCommitted _camera};

titleCut [" ", "BLACK OUT", 0];
sleep 0.5;
titleCut [" ", "BLACK IN", 0];

_posCam = getPos leader cutGroup2;
_posCam = [_posCam select 0, (_posCam select 1) + 10, 2];

_camera = "camera" camcreate _posCam;
_camera cameraEffect ["internal", "back"];
_camera camSetTarget leader cutGroup2;
_camera camCommit 5;

waitUntil {camCommitted _camera};

titleCut [" ", "BLACK OUT", 0];
sleep 0.5;
titleCut [" ", "BLACK IN", 0];

_posCam = getPos leader cutGroup3;
_posCam = [_posCam select 0, (_posCam select 1) +10, 0.2];

_camera = "camera" camcreate _posCam;
_camera cameraEffect ["internal", "back"];
_camera camSetTarget leader cutGroup3;
_camera camCommit 5;

waitUntil {camCommitted _camera};

titleCut [" ", "BLACK OUT", 0];
sleep 0.5;
titleCut [" ", "BLACK IN", 0];

//
_posCam = getPos leader cutGroup1;
_posCam = [_posCam select 0, (_posCam select 1) +10, 5];

_camera = "camera" camcreate _posCam;
_camera cameraEffect ["internal", "back"];
_camera camSetTarget leader cutGroup1;
_camera camCommit 5;

waitUntil {camCommitted _camera};

titleCut [" ", "BLACK OUT", 0];
sleep 0.5;
titleCut [" ", "BLACK IN", 0];

_posCam = getPos leader cutGroup2;
_posCam = [_posCam select 0, (_posCam select 1) +10, 2];

_camera = "camera" camcreate _posCam;
_camera cameraEffect ["internal", "back"];
_camera camSetTarget leader cutGroup2;
_camera camCommit 5;

waitUntil {camCommitted _camera};

titleCut [" ", "BLACK OUT", 0];
sleep 0.5;
titleCut [" ", "BLACK IN", 0];

/*_posCam = getPos leader cutGroup3;
_posCam = [_posCam select 0, (_posCam select 1) +10, 0.2];

_camera = "camera" camcreate _posCam;
_camera camSetTarget leader cutGroup3;
_camera camCommit 5;

waitUntil {camCommitted _camera};*/

cam2soldier switchMove "Acts_EpicSplit_in";
_newPos = getPos cam2soldier;
cam2soldier setPos [_newPos select 0, _newPos select 1, -0.3];

_camera = "camera" camcreate getPos cam2start;
_camera cameraEffect ["internal", "back"];
_camera camSetDir (getPos cam2start vectorFromTo getPos cam2dir);
_camera camCommit 0;
waitUntil {camCommitted _camera};
_camera camSetPos getPos cam2stop;
_camera camCommit 20;

waitUntil {camCommitted _camera};

titleCut [" ", "BLACK OUT", 0];
sleep 0.5;
titleCut [" ", "BLACK IN", 0];

_posCam = getPos leader cutGroup4;
_posCam = [_posCam select 0, (_posCam select 1) + 10, 0.5];

_camera = "camera" camcreate _posCam;
_camera cameraEffect ["internal", "back"];
_camera camSetTarget leader cutGroup4;
_camera camCommit 5;

waitUntil {camCommitted _camera};

titleCut [" ", "BLACK OUT", 0];
sleep 0.5;
titleCut [" ", "BLACK IN", 0];

_posCam = getPos leader cutGroup5;
_posCam = [(_posCam select 0) + 10, (_posCam select 1) + 10, 2];

_camera = "camera" camcreate _posCam;
_camera cameraEffect ["internal", "back"];
_camera camSetTarget leader cutGroup5;
_camera camCommit 5;

waitUntil {camCommitted _camera};

titleCut [" ", "BLACK OUT", 0];
sleep 0.5;
titleCut [" ", "BLACK IN", 0];

_posCam = getPos leader cutGroup6;
_posCam = [(_posCam select 0) - 10, (_posCam select 1), 0.2];

_camera = "camera" camcreate _posCam;
_camera cameraEffect ["internal", "back"];
_camera camSetTarget leader cutGroup6;
_camera camCommit 5;

waitUntil {camCommitted _camera};

titleCut [" ", "BLACK OUT", 0.5];
sleep 0.5;
[] spawn {
	skipTime1 = true;
	publicVariable "skipTime1";
};
sleep 0.5;
titleCut [" ", "BLACK IN", 0.5];

_posCam = getPos leader cutGroup1;
_posCam = [_posCam select 0, (_posCam select 1) + 10, 0.5];

_camera = "camera" camcreate _posCam;
_camera cameraEffect ["internal", "back"];
_camera camSetTarget leader cutGroup1;
_camera camCommit 4;

waitUntil {camCommitted _camera};

titleCut [" ", "BLACK OUT", 0];
sleep 0.5;
titleCut [" ", "BLACK IN", 0];

_posCam = getPos leader cutGroup2;
_posCam = [_posCam select 0, (_posCam select 1) + 10, 2];

_camera = "camera" camcreate _posCam;
_camera cameraEffect ["internal", "back"];
_camera camSetTarget leader cutGroup2;
_camera camCommit 4;

waitUntil {camCommitted _camera};

titleCut [" ", "BLACK OUT", 0.5];
sleep 1;
[] spawn {
	skipTime2 = true;
	publicVariable "skipTime2";
};
/*[["skipTime2Wait", "skipTime2"], "script\server\sync\clientSync.sqf"] remoteExec ["execVM", 2];
waitUntil {!isNil "skipTime2Wait"};*/
sleep 1;
titleCut [" ", "BLACK IN", 0.5];

_posCam = getPos leader cutGroup6;
_posCam = [(_posCam select 0) - 10, (_posCam select 1), 0.2];
_camera = "camera" camcreate _posCam;
_camera cameraEffect ["internal", "back"];
_camera camSetTarget leader cutGroup6;
_camera camCommit 4;

waitUntil {camCommitted _camera};

_posCam = getPos leader cutGroup5;
_posCam = [(_posCam select 0) + 10, (_posCam select 1), 2];
_camera = "camera" camcreate _posCam;
_camera cameraEffect ["internal", "back"];
_camera camSetTarget leader cutGroup5;
_camera camCommit 4;

waitUntil {camCommitted _camera};

titleCut [" ", "BLACK OUT", 0];
sleep 0.5;
[] spawn {
	skipTime3 = true;
	publicVariable "skipTime3";
};
sleep 0.5;
titleCut [" ", "BLACK IN", 0];

_posCam = getPos leader cutGroup1;
_posCam = [_posCam select 0, (_posCam select 1) + 10, 1];
_camera = "camera" camcreate _posCam;
camUseNVG true;
_camera cameraEffect ["internal", "back"];
_camera camSetTarget leader cutGroup1;
_camera camCommit 5;

waitUntil {camCommitted _camera};

_posCam = getPos leader cutGroup1;
_posCam = [_posCam select 0, (_posCam select 1) - 10, 1];
_camera = "camera" camcreate _posCam;
_camera cameraEffect ["internal", "back"];
_camera camSetTarget leader cutGroup1;
_camera camCommit 5;

waitUntil {camCommitted _camera};

_posCam = getPos leader cutGroup4;
_posCam = [_posCam select 0, (_posCam select 1) + 10, 0.5];
_camera = "camera" camcreate _posCam;
_camera cameraEffect ["internal", "back"];
_camera camSetTarget leader cutGroup4;
_camera camCommit 10;

waitUntil {camCommitted _camera};

titleCut [" ", "BLACK OUT", 0];
sleep 1;
[] spawn {
	skipTime4 = true;
	publicVariable "skipTime4";
};
sleep 1;
titleCut [" ", "BLACK IN", 0];

_posCam = getPos leader cutGroup5;
_posCam = [(_posCam select 0) -10, (_posCam select 1) + 10, 2];
_camera = "camera" camcreate _posCam;
camUseNVG false;
_camera cameraEffect ["internal", "back"];
_camera camSetTarget leader cutGroup5;
_camera camCommit 10;

waitUntil {camCommitted _camera};

titleCut [" ", "BLACK OUT", 0];
sleep 1;
[] spawn {
	skipTime5 = true;
	publicVariable "skipTime5";
};
sleep 1;
titleCut [" ", "BLACK IN", 0];

_posCam = getPos leader cutGroup4;
_posCam = [(_posCam select 0), (_posCam select 1) + 10, 2];
_camera = "camera" camcreate _posCam;
_camera cameraEffect ["internal", "back"];
_camera camSetTarget leader cutGroup4;
_camera camCommit 10;

waitUntil {camCommitted _camera};

/*titleCut [" ", "BLACK OUT", 0];
sleep 1;
skipTime 4;
sleep 1;
titleCut [" ", "BLACK IN", 0];

_posCam = getPos leader cutGroup6;
_posCam = [(_posCam select 0) + 10, (_posCam select 1), 2];
_camera = "camera" camcreate _posCam;
_camera cameraEffect ["internal", "back"];
_camera camSetTarget leader cutGroup6;
_camera camCommit 5;

waitUntil {camCommitted _camera};*/

titleCut [" ", "BLACK OUT", 0.5];
sleep 1;
[] spawn {
	skipTime6 = true;
	publicVariable "skipTime6";
};
/*[["skipTime6Wait", "skipTime6"], "script\server\sync\clientSync.sqf"] remoteExec ["execVM", 2];
waitUntil {!isNil "skipTime6Wait"};*/
sleep 1;
titleCut [" ", "BLACK IN", 0.5];

cam3soldier switchMove "AidlPsitMstpSnonWnonDnon_ground00";
_newPos = getPos cam3soldier;
cam3soldier setPos [_newPos select 0, _newPos select 1, 0.05];

// Vue sur ak
_camera = "camera" camcreate getPos cam3start;
_camera cameraEffect ["internal", "back"];
_camera camSetDir (getPos cam3start vectorFromTo getPos cam3dir);
_camera camCommit 0;

waitUntil {camCommitted _camera};

sleep 5;

titleCut [" ", "BLACK OUT", 0];
sleep 0.5;
titleCut [" ", "BLACK IN", 0];

// Vue paysage
_camera = "camera" camcreate getPos cam4start;
_camera cameraEffect ["internal", "back"];
_camera camSetDir (getPos cam4start vectorFromTo getPos cam4dir);
_camera camCommit 0;

waitUntil {camCommitted _camera};

sleep 5;

titleCut [" ", "BLACK OUT", 0];
sleep 0.5;
titleCut [" ", "BLACK IN", 0];

// Travelling sur bivouac
_camera = "camera" camcreate getPos cam4start;
_camera cameraEffect ["internal", "back"];
_camera camSetTarget leader cam3soldier;
_camera camSetPos getPos cam3start_1;
_camera camCommit 5;

waitUntil {camCommitted _camera};

_camera = "camera" camcreate getPos cam3start_1;
_camera cameraEffect ["internal", "back"];
_camera camSetTarget leader cam3soldier;
_camera camSetPos getPos cam3start_2;
_camera camCommit 5;

waitUntil {camCommitted _camera};

_camera = "camera" camcreate getPos cam3start_2;
_camera cameraEffect ["internal", "back"];
_camera camSetTarget leader cam3soldier;
_camera camSetPos getPos cam3start_3;
_camera camCommit 5;

waitUntil {camCommitted _camera};

_camera = "camera" camcreate getPos cam3start_3;
_camera cameraEffect ["internal", "back"];
_camera camSetTarget leader cam3soldier;
_camera camSetPos getPos cam3start_4;
_camera camCommit 5;

waitUntil {camCommitted _camera};

_camera = "camera" camcreate getPos cam3start_4;
_camera cameraEffect ["internal", "back"];
_camera camSetTarget leader cam3soldier;
_camera camSetPos getPos cam3start_5;
_camera camCommit 5;

waitUntil {camCommitted _camera};

_camera = "camera" camcreate getPos cam3start_5;
_camera cameraEffect ["internal", "back"];
_camera camSetTarget leader cam3soldier;
_camera camSetPos getPos lastcam;
_camera camCommit 45;

waitUntil {camCommitted _camera};

/*Nous avons passé 3 jours à les traquer
Cela a assez durée
Nous les débusquerons avant l’aurore
-	Nom du game leader*/

titleCut [" ", "BLACK OUT", 0.5];
sleep 1;

[] spawn {
	skipTime7 = true;
	publicVariable "skipTime7";
};

/*[["skipTime7Wait", "skipTime7"], "script\server\sync\clientSync.sqf"] remoteExec ["execVM", 2];
waitUntil {!isNil "skipTime7Wait"};*/

// Message de fin d'intro
_handle = [parseText format [ "<t align='center' size='2'>%1</t>", toUpper "NOUS AVONS PASSE 3 JOURS A LES TRAQUER"], [0,0,1,1], [10,1], 3, 0.7, 0] spawn BIS_fnc_textTiles;
waitUntil {scriptDone _handle};

_handle = [parseText format [ "<t align='center' size='2'>%1</t>", toUpper "CELA A ASSEZ DUREE"], [0,0,1,1], [10,1], 3, 0.7, 0] spawn BIS_fnc_textTiles;
waitUntil {scriptDone _handle};

_handle = [parseText format [ "<t align='center' size='2'>%1</t>", toUpper "NOUS LES DEBUSQUERONS AVANT L'AURORE"], [0,0,1,1], [10,1], 3, 0.7, 0] spawn BIS_fnc_textTiles;
waitUntil {scriptDone _handle};

sleep 1;

titleCut [" ", "BLACK IN", 1];

[] spawn {
	startTheGame = true;
	publicVariable "startTheGame";
};

setViewDistance _defaultViewDistance;

camDestroy _camera;

_startPlayerPos = player getVariable "startPos";
if (isNil "_startPlayerPos") then {
	player setPos _startPlayerPos;
};

player cameraEffect ["terminate","back"];

player action["NVGoggles", player];