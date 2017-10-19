params ["_min", "_side"];

_eastCount = _side countSide allUnits;
diag_log ["prepareRedition", _eastCount, _min];
if (startTheGame) then {
	if (_eastCount < _min) then {
		{
			if (side _x == _side) then {
				_x playmove "AmovPercMstpSsurWnonDnon";
				[_x, "AmovPercMstpSsurWnonDnon"] remoteExec ["playMove"];
				_x disableAI "ANIM";
				_x setCaptive true;
			};
		} forEach allUnits;
		reddition = true;
	};
};