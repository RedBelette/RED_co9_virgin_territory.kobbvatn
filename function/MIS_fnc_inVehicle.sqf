params["_unit"];

diag_log ["in vehicle test", _unit];

_inVehicle = false;
if (vehicle _unit != _unit) then {
	_inVehicle = true;
};

_inVehicle