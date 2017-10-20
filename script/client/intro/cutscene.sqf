_defaultViewDistance = viewDistance;

titleCut [" ", "BLACK OUT", 1];

sleep 1;

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
skipTime 8.5;
// SHOW TIME
_hour = floor daytime;
_minute = floor ((daytime - _hour) * 60);
_time24 = text format ["%1:%2:%3",_hour,_minute];
hint _time24;
//
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
sleep 0.5;
skipTime 1.5;
// SHOW TIME
_hour = floor daytime;
_minute = floor ((daytime - _hour) * 60);
_time24 = text format ["%1:%2:%3",_hour,_minute];
hint _time24;
//
titleCut [" ", "BLACK IN", 0.5];

_posCam = getPos leader cutGroup6;
_posCam = [(_posCam select 0) - 10, (_posCam select 1), 0.2];
_camera = "camera" camcreate _posCam;
_camera cameraEffect ["internal", "back"];
_camera camSetTarget leader cutGroup6;
_camera camCommit 5;

waitUntil {camCommitted _camera};

_posCam = getPos leader cutGroup5;
_posCam = [(_posCam select 0) + 10, (_posCam select 1), 2];
_camera = "camera" camcreate _posCam;
_camera cameraEffect ["internal", "back"];
_camera camSetTarget leader cutGroup5;
_camera camCommit 5;

waitUntil {camCommitted _camera};

titleCut [" ", "BLACK OUT", 0];
sleep 0.5;
skipTime 0.5;
// SHOW TIME
_hour = floor daytime;
_minute = floor ((daytime - _hour) * 60);
_time24 = text format ["%1:%2:%3",_hour,_minute];
hint _time24;
//
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
skipTime 8;
// SHOW TIME
_hour = floor daytime;
_minute = floor ((daytime - _hour) * 60);
_time24 = text format ["%1:%2:%3",_hour,_minute];
hint _time24;
//
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
skipTime 4;
// SHOW TIME
_hour = floor daytime;
_minute = floor ((daytime - _hour) * 60);
_time24 = text format ["%1:%2:%3",_hour,_minute];
hint _time24;
//
sleep 1;
titleCut [" ", "BLACK IN", 0];

_posCam = getPos leader cutGroup4;
_posCam = [(_posCam select 0), (_posCam select 1) + 10, 2];
_camera = "camera" camcreate _posCam;
_camera cameraEffect ["internal", "back"];
_camera camSetTarget leader cutGroup4;
_camera camCommit 10;

waitUntil {camCommitted _camera};

titleCut [" ", "BLACK OUT", 0];
sleep 1;
skipTime 4;
// SHOW TIME
_hour = floor daytime;
_minute = floor ((daytime - _hour) * 60);
_time24 = text format ["%1:%2:%3",_hour,_minute];
hint _time24;
//
sleep 1;
titleCut [" ", "BLACK IN", 0];

_posCam = getPos leader cutGroup6;
_posCam = [(_posCam select 0) + 10, (_posCam select 1), 2];
_camera = "camera" camcreate _posCam;
_camera cameraEffect ["internal", "back"];
_camera camSetTarget leader cutGroup6;
_camera camCommit 5;

waitUntil {camCommitted _camera};

titleCut [" ", "BLACK OUT", 0.5];
sleep 1;
skipTime 6;
// SHOW TIME
_hour = floor daytime;
_minute = floor ((daytime - _hour) * 60);
_time24 = text format ["%1:%2:%3",_hour,_minute];
hint _time24;
//
sleep 1;
titleCut [" ", "BLACK IN", 0.5];

cam3soldier switchMove "AidlPsitMstpSnonWnonDnon_ground00";
_newPos = getPos cam3soldier;
cam3soldier setPos [_newPos select 0, _newPos select 1, 0.05];

_camera = "camera" camcreate getPos cam3start;
_camera cameraEffect ["internal", "back"];
_camera camSetDir (getPos cam3start vectorFromTo getPos cam3dir);
_camera camCommit 0;

sleep 5;

titleCut [" ", "BLACK OUT", 0];
sleep 0.5;
titleCut [" ", "BLACK IN", 0];

_camera = "camera" camcreate getPos cam4start;
_camera cameraEffect ["internal", "back"];
_camera camSetDir (getPos cam4start vectorFromTo getPos cam4dir);
_camera camCommit 0;

sleep 5;

titleCut [" ", "BLACK OUT", 0];
sleep 0.5;
titleCut [" ", "BLACK IN", 0];

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
_camera camCommit 40;

waitUntil {camCommitted _camera};



setViewDistance _defaultViewDistance;

camDestroy _camera;

player cameraEffect ["terminate","back"];

startTheGame = true;
publicVariable "startTheGame";