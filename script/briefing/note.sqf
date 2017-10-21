if (isServer or call TGV_fnc_isAdmin) then {

	_note = "
		<font size='18'>NOTE DE MISSION POUR LE GAME MASTER</font><br/>
-	Un lien est disponible dans « TGV Administration Mission » pour lancer la partie.<br/>
-	La radio pour contacter le QG se trouve dans un sac à dos près du véhicule.<br/>
-	Pour contacter le QG, vous devez poser le sac à terre et cliquer sur l’action « contacter QG ».<br/>
<br/><br/>
		";

	player createDiaryRecord ["diary", ["TGV Note Administrateur",_note]];
} else {
	_note = "
		<font size='18'>ACCEDER AU NOTE ADMIN</font><br/>
		|- <execute expression=""execVM 'script\briefing\note.sqf';"">
		Demander les notes admin.</execute><br/>
		";
	player createDiaryRecord ["diary", ["TGV Note Administrateur",_note]];
}