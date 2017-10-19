
if (isServer or call TGV_fnc_isAdmin) then {

	// ADMIN BRIEFING
	_briefing ="
		<br/>
		<font size='18'>ADMINISTRATEUR</font><br/>
		Cette section n'est visible que par l'administrateur.
		<br/><br/>
		";

	// ====================================================================================

	// ENDINGS
	// This block of code collects all valid endings and formats them properly

	_title = [];
	_ending = [];
	_endings = [];

	_i = 1;
	while {true} do {
		_title = getText (missionconfigfile >> "CfgDebriefing" >> format ["end%1",_i] >> "title");
		_description = getText (missionconfigfile >> "CfgDebriefing" >> format ["end%1",_i] >> "description");
		if (_title == "") exitWith {};
		_ending = [_i,_title,_description];
		_endings append ([_ending]);
		_i = _i + 1;
	};

	// Create the briefing section to display the endings

	_briefing = _briefing + "
		<font size='18'>FINS DISPONIBLES</font><br/>
		These endings are available. To trigger an ending click on its link.<br/><br/>
		";

	{
		_briefing = _briefing + format [
		"<execute expression=""endMission 'end%1';"">'end%1'</execute> - %2:<br/>
		%3<br/><br/>"
		,_x select 0,_x select 1,_x select 2];
	} forEach _endings;

	// ====================================================================================

	// SPECTATEUR
	//===passe ts les joueurs en spec

	_briefing = _briefing + "
		<font size='18'>ACCEDER AU MODE SPECTATEUR</font><br/>
		|- <execute expression="" ['library\script\spectator.sqf'] call BIS_fnc_execVM;
		hintsilent 'Appuyer sur R pour quitter';"">
		Cliquer ici pour entrer en mode spectateur. Touche R pour quitter.</execute><br/>
		";

	// ====================================================================================

	// SAFE START SECTION

	_briefing = _briefing + "
		<font size='18'>SAFE START CONTROL</font><br/>
		|- <execute expression=""f_param_mission_timer = f_param_mission_timer + 1; publicVariable 'f_param_mission_timer'; hintsilent format ['Mission Timer: %1',f_param_mission_timer];"">
		Ajouter une minute au Safe Start</execute><br/>

		|- <execute expression=""f_param_mission_timer = f_param_mission_timer - 1; publicVariable 'f_param_mission_timer'; hintsilent format ['Mission Timer: %1',f_param_mission_timer];"">
		Enlever une minute au Safe Start</execute><br/>

		|- <execute expression=""[[[],'library\script\safeStart\f_safeStart.sqf'],'BIS_fnc_execVM',true]  call BIS_fnc_MP;
		hintsilent 'Safe Start activé!';"">
		Lancer le Safe Start</execute><br/>

		|- <execute expression=""f_param_mission_timer = -1; publicVariable 'f_param_mission_timer';
		[['SafeStartMissionStarting',['La mission commence!' ]],'bis_fnc_showNotification',true] call BIS_fnc_MP;
		[[false],'f_fnc_safety',playableUnits + switchableUnits] call BIS_fnc_MP;
		hintsilent 'Safe Start désactivé!';"">
		Mettre fin au Safe Start</execute><br/>

		|- <execute expression=""[[true],'f_fnc_safety',playableUnits + switchableUnits] call BIS_fnc_MP;
		hintsilent 'Sécurité enclenchée!' "">
		Engager la sécurité pour les joueurs</execute><br/>

		|- <execute expression=""[[false],'f_fnc_safety',playableUnits + switchableUnits] call BIS_fnc_MP;
		hintsilent 'Sécurité désengagée! Pour désengager la sécurité appuyez sur F' "">
		Désengager la sécurité </execute><br/><br/>
		";

	// ====================================================================================

	// ADD ZEUS SUPPORT SECTION

	_briefing = _briefing + "
		<font size='18'>ZEUS SUPPORT</font><br/>
		<execute expression=""
		if !(isNull (getAssignedCuratorLogic player)) then {hintsilent 'ZEUS deja assigne!'} else {
			[[player,true],'f_fnc_zeusInit',false] spawn BIS_fnc_MP; hintsilent 'Curator assigned.';
		};"">Donner les pouvoirs ZEUS a l'admin.</execute>.<br/>

		|- <execute expression=""
		if (isNull (getAssignedCuratorLogic player)) then {hintsilent 'Assignez d'abord un ZEUS!'} else {[[player,playableUnits],'f_fnc_zeusAddObjects',false] spawn BIS_fnc_MP; hintsilent 'Added playable units.'};"">Ajouter tous les joueurs et unites jouables à ZEUS.</execute>.<br/>

		|- <execute expression=""
		if (isNull (getAssignedCuratorLogic player)) then {hintsilent 'Assignez d'abord un ZEUS!'} else {
			[[player,true,true],'f_fnc_zeusAddObjects',false] spawn BIS_fnc_MP; hintsilent 'Controle des groupes leaders et des vehicules vides donnes au ZEUS.'};"">
		Ajouter tous les leaders de groupe et les vehicules vides au ZEUS.</execute>.<br/>

		|- <execute expression=""
		if (isNull (getAssignedCuratorLogic player)) then {hintsilent 'Assignez d'abord un ZEUS!'} else {[[player,true],'f_fnc_zeusAddObjects',false] spawn BIS_fnc_MP; hintsilent 'Add all units.'};"">Ajouter tous les objets de mission au ZEUS</execute> <font color='#FF0000'>(DESYNC POSSIBLE)</font>.<br/>

		|- <execute expression=""
		if (isNull (getAssignedCuratorLogic player)) then {hintsilent 'Assignez d'abord un ZEUS!'} else {(getAssignedCuratorLogic player) removeCuratorEditableObjects [allDead,true]; hintsilent 'Unites mortes supprimees'};"">Supprimer toutes les unites mortes de ZEUS</execute>.<br/>

		|- <execute expression=""
		if (isNull (getAssignedCuratorLogic player)) then {hintsilent 'Assignez d'abord un ZEUS!'} else {[[player,false],'f_fnc_zeusAddObjects',false] spawn BIS_fnc_MP; [[player,false],'f_fnc_zeusAddAddons',false] spawn BIS_fnc_MP; hintsilent 'Enlever pouvoirs et unites'};"">Pouvoir et unites enleves au ZEUS</execute>.<br/>
		<br/>
		";

	// ====================================================================================

	// Test side

	_briefing = _briefing + "
		<font size='18'>Changer les relations entre factions</font><font color='#FF0000'>(BUGS POSSIBLES)</font><br/>

		|- <execute expression=""[[[],'library\script\Side\indefrbl.sqf'],'BIS_fnc_execVM',true]  call BIS_fnc_MP;
		hintsilent 'Les indépendants et les BLUFOR sont maintenant amis.';"">
		Allier Inde et BLUFOR</execute><br/>

		|- <execute expression=""[[[],'library\script\Side\indenbl.sqf'],'BIS_fnc_execVM',true]  call BIS_fnc_MP;
		hintsilent 'Les indépendants et les BLUFOR sont maintenant ennemis.';"">
		Rendre Inde et BLUFOR ennemis</execute><br/>

		|- <execute expression=""[[[],'library\script\Side\indefrop.sqf'],'BIS_fnc_execVM',true]  call BIS_fnc_MP;
		hintsilent 'Les indépendants et les OPFOR sont maintenant alliés.';"">
		Allier Inde et OPFOR</execute><br/>

		|- <execute expression=""[[[],'library\script\Side\indeenop.sqf'],'BIS_fnc_execVM',true]  call BIS_fnc_MP;
		hintsilent 'Les indépendants et les OPFOR sont maintenant ennemis.';"">
		Rendre Inde et OPFOR ennemis</execute><br/>

		";

	player createDiaryRecord ["diary", ["TGV Menu Administrateur",_briefing]];
} else {
	_briefing = "
		<font size='18'>ACCEDER AU MODE ADMIN</font><br/>
		|- <execute expression=""execVM 'library\script\briefing\admin.sqf';"">
		Demander les droits admin.</execute><br/>
		";
	player createDiaryRecord ["diary", ["TGV Menu Administrateur",_briefing]];
}