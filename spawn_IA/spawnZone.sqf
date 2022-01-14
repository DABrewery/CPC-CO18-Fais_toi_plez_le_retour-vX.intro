//Le nom de la zone qui sera utilisé pour tous les spawns 
private _zn = "Zone";

switch (true) do {
	case (nbJoueurs < 14): {
		//Spawn des patrouilles
		[_zn,[4,5,6],GROUPE_ENI_PETIT,opfor] spawn int_fnc_spawnRdmPatrols;
		//Spawn des garnisons
		[_zn,GROUPE_ENI_PETIT,nil,nil,nil,nil,0.7,0.7] spawn int_fnc_spawnGarnisons;
	};
	case (nbJoueurs > 13): {
		//Spawn des patrouilles
		[_zn,[6,7,8],GROUPE_ENI_PETIT,opfor] spawn int_fnc_spawnRdmPatrols;
		//Spawn des garnisons
		[_zn,GROUPE_ENI_MOYEN,nil,nil,nil,0.4,0.7] spawn int_fnc_spawnGarnisons;
	};
};

//Spawn des armes fixes
[_zn,opfor,"CUP_O_KORD_high_RU",nil,1,0,1] spawn int_fnc_spawnFixedWeapons;
