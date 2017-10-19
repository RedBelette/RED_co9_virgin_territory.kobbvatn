{
	_leaderGroup = leader _x;

	_inVehicle = [_leaderGroup] call MIS_fnc_inVehicle;

	if (!_inVehicle and !isPlayer _leaderGroup and side _leaderGroup == west) then {
		[_x, [8281,11223,0],100,true] call TGV_fnc_seekAndDestroy;
	};
} forEach allGroups;