if (isServer or call TGV_fnc_isAdmin) then {

	_adminMission = "
		<font size='18'>LISTES DES COMMANDES POUR LA MISSION</font><br/>
		|- <execute expression=""['script\server\startMission.sqf'] call TGV_fnc_execScriptOnServer"">
		Cliquer ici pour démarrer la mission.</execute><br/>
		";

	player createDiaryRecord ["diary", ["TGV Administration Mission",_adminMission]];
} else {
	_adminMission = "
		<font size='18'>ACCEDER AU MODE ADMINISTRATION DE MISSION</font><br/>
		|- <execute expression=""execVM 'script\briefing\adminMission.sqf';"">
		Demander les droits pour l'administration de la mission.</execute><br/>
		";
	player createDiaryRecord ["diary", ["TGV Administration Mission",_adminMission]];
}