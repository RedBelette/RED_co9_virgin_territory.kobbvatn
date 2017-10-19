params [["_taskRegistryName", "taskRegistry"], "_key", "_task"];

_taskRegistry = missionNamespace getVariable _taskRegistryName;

_verifyKey = ["containsKey", _key] call _taskRegistry;
if (_verifyKey) throw "key already exist";

["Put", [_key, _task]] call _taskRegistry;
