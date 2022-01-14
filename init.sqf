//Récupère la liste de tous les marqueurs LUCY pour les masquer et les blacklister pour GDC_fnc_chooseSpawnPos
private _tbMrk = allMapMarkers select {["mrk", _x, true] call BIS_fnc_inString};

//Masque les marqueurs
{_x setMarkerAlpha 0.0} forEach _tbMrk;

//LUCY (-> lancé dans l'init.sqf)
[2,"mkr_spawn_static_unit",true,600.0,false,3600.0,true,true,"COLONEL"] call GDC_fnc_lucyInit;
["spawn_IA\ia_loadout.sqf"] call GDC_fnc_lucyConfigLoadoutIA;

//Spawn sur position au choix
["marker_spawn",[],"CAPTAIN",["marker_noSpawn","marker_BoatPl"]] call int_fnc_chooseSpawnPos;

//Helico d'extraction
["ACRE_PRC148",5,blufor,"CUP_B_CH53E_USMC","mrkInsHeli",true,true] call GDC_fnc_extra;

//Lance le briefing
execVM "briefing.sqf";

