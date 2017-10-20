loadIntro=true;

0 setOvercast 0.2;
forceWeatherChange;
999999 setOvercast 0.2;

["script\client\intro\cutscene.sqf", false] call TGV_fnc_execScriptOnClients;

[cutGroup1, [6375.89,13975.1,0], 50] call CBA_fnc_taskPatrol;
[cutGroup2, [6654.37,13991.5,0], 50] call CBA_fnc_taskPatrol;
[cutGroup3, [6950.51,13824.4,0], 50] call CBA_fnc_taskPatrol;

[cutGroup4, [7926.53,13509.3,0], 50] call CBA_fnc_taskPatrol;
[cutGroup5, [7926.53,13509.3,0], 50] call CBA_fnc_taskPatrol;
[cutGroup6, [7926.53,13509.3,0], 50] call CBA_fnc_taskPatrol;