_unit = _this select 0;
_anim = _this select 1;

player synchronizeObjectsAdd [_unit];

while {isNil "startTheGame"} do {
	_unit switchMove _anim;
	waitUntil {animationState _unit != _anim};
};

player synchronizeObjectsRemove [_unit];