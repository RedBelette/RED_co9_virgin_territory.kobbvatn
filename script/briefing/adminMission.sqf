if (isServer or call TGV_fnc_isAdmin) then {

	_adminMission = "
		<font size='18'>LISTES DES COMMANDES POUR LA MISSION</font><br/>
		|- <execute expression=""['Mission framework','par RedBelette'] call TGV_fnc_scenarioTitle;"">
		Cliquer ici pour afficher le titre de la mission.</execute><br/>
		|- <execute expression=""group1 = [EAST, ['O_Soldier_F','O_Soldier_F', 'O_Soldier_F'], getPos spawnTest] call TGV_fnc_spawnUnits;"">
		Cliquer ici pour spawner des unités.</execute><br/>
		|- <execute expression=""call TGV_fnc_removeDeads;"">
		Cliquer ici pour enlever les cadavres.</execute> (Problème de performance)<br/>
		|- <execute expression=""[east, 2] call TGV_fnc_redition;"">
		Cliquer ici pour déclencher une rédition si moins de 2 unités de l'est.</execute><br/>
		<font size='18'>LISTES COMMANDE AMELIORATION ACRE2</font><br/>
		|- <execute expression=""call TGV_fnc_remove343;"">
		Cliquer ici pour enlever la 343 de l'inventaire des joueurs.</execute><br/>
		|- <execute expression=""_pos = getPos player;
								 _pos set [2, 200];
								[_pos] call TGV_fnc_huntirSatelitte;"">
		Cliquer ici installer un satelitte au dessus du joueur.</execute><br/>
		<font size='18'>LISTES COMMANDE AMELIORATION d'AMBIANCE</font><br/>
		|- <execute expression=""[getPos player, [0,30000,0], 100, 'FULL', 'B_UAV_05_F', west] call TGV_fnc_ambientFlyby;"">
		Cliquer ici pour exécuter un vol d'ambience.</execute><br/>
		<font size='18'>LISTES COMMANDE POUR TACHE DE FOND</font><br/>
		|- <execute expression=""['hint ''Le cronjob est lancé toutes les 15 secs'';', 15] call TGV_fnc_cronjob;"">
		Cliquer ici lancer un cronjob.</execute><br/>
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