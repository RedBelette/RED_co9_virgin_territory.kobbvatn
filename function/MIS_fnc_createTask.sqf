params [["_taskRegistryName", "taskRegistry"], "_key", "_newTaskTitle"];

_newTask = player createSimpleTask [_newTaskTitle];

[_taskRegistryName, _key, _newTask] call MIS_fnc_registerTask;

_newTask