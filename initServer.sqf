//PLUTO Opfor
[
	opfor,		        //0 camp
	[1000,3000,6000],	//1 revealRange [man,land,air]
	[1500,3000,3000],	//2 sensorRange [man,land,air]
	120,			    //3 QRFtimeout
	[2000,2000,6000],	//4 QRFrange [man,land,air]
	[60,90,120],		//5 QRFdelay [min,mid,max]
	240,			    //6 ARTYtimeout
	[20,30,60],		    //7 ARTYdelay [min,mid,max]
	[1,2,4],		    //8 ARTYrounds [min,mid,max]
	[0,40,100]		    //9 ARTYerror [min,mid,max]
] call GDC_fnc_pluto;

gdc_plutoDebug = false;

//Script pour les projecteurs de nuit
[] spawn int_fnc_initSearchlight;

//Vehicle patrols
[vehPl_land, "mrkZnZone", nil, nil, ["water","mrknoWP_1","mrknoWP_2","mrknoWP_3","mrknoWP_4","mrknoWP_5","mrknoWP_6","mrknoWP_7"]] call int_fnc_lucyVehicleRandomPatrol;
//La patrouille du bauteau est déclenchée lors du dernier WP placé sur carte via Eden
//[vehPl_water, "mrkBoatPl", nil, nil, ["ground","mrknoWP_8","mrknoWP_9","mrknoWP_10","mrknoWP_11","mrknoWP_12","mrknoWP_13"], false] call int_fnc_lucyVehicleRandomPatrol;

//Get number of players to allow dynamic ENI units number adaptation
nbJoueurs = count (playableUnits + (switchableUnits select {_x != HC_Slot}));

/*******************************************/
/*         IA GROUP DEF                    */
/*******************************************/
/* Group definition */
private _fsl_ENI    = "CPC_NAM_O_VC_soldier_1";
private _gl_ENI     = "CPC_NAM_O_VC_soldier_GL";
private _mg_ENI     = "CPC_NAM_O_VC_soldier_MG";
private _tl_ENI     = "CPC_NAM_O_VC_soldier_TL";

//2 à 3
GROUPE_ENI_PETIT = [
	[_gl_ENI, _fsl_ENI],
	[_tl_ENI, _fsl_ENI],
	[_fsl_ENI, _mg_ENI],
	[_tl_ENI, _fsl_ENI, _mg_ENI],
	[_tl_ENI, _fsl_ENI, _gl_ENI]
];
//4 à 6
GROUPE_ENI_MOYEN = [
	[_tl_ENI, _fsl_ENI, _fsl_ENI, _gl_ENI],
	[_tl_ENI, _fsl_ENI, _fsl_ENI, _mg_ENI],
	[_tl_ENI, _fsl_ENI, _fsl_ENI, _fsl_ENI],
	[_tl_ENI, _fsl_ENI, _fsl_ENI, _fsl_ENI],
	[_tl_ENI, _fsl_ENI, _fsl_ENI, _fsl_ENI, _gl_ENI],
	[_tl_ENI, _fsl_ENI, _fsl_ENI, _fsl_ENI, _mg_ENI],
	[_tl_ENI, _fsl_ENI, _fsl_ENI, _fsl_ENI, _gl_ENI, _mg_ENI] 
];

/*******************************************/
/*        ENI Spawn                        */
/*******************************************/

//Les camps

execVM "spawn_IA\spawnZone.sqf";
//["spawn_IA\ia_loadout.sqf"] call GDC_fnc_lucyConfigLoadoutIA;
//["loadout\loadout.sqf"] call GDC_fnc_lucyConfigLoadoutIA;