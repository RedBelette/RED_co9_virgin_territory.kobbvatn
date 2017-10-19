_pos = _this select 0;

{
	_leaderGroup = leader _x;

	_inVehicle = [_leaderGroup] call MIS_fnc_inVehicle;

	if (_inVehicle and !isPlayer _leaderGroup and side _leaderGroup == west) then {
		[_x, _pos,200,true] call TGV_fnc_seekAndDestroy;
	};
} forEach allGroups;