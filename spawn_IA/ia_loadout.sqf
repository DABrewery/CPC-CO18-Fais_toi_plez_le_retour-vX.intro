loadoutTL = 
{
	_unit = _this select 0;

    removeAllWeapons _unit;
    removeAllItems _unit;
    removeAllAssignedItems _unit;
    removeUniform _unit;
    removeVest _unit;
    removeBackpack _unit;
    removeHeadgear _unit;
    removeGoggles _unit;

	_unit addWeapon "CUP_arifle_AK103_top_rail";
	_unit addPrimaryWeaponItem "optic_ACO_grn";
	_unit addPrimaryWeaponItem "CUP_30Rnd_TE1_Red_Tracer_762x39_AK47_bakelite_M";

	_unit forceAddUniform "CUP_U_B_CDF_FST_2";
	_unit addVest "CUP_V_B_Interceptor_Rifleman_M81";

	_unit addWeapon "Binocular";

	_unit addItemToUniform "FirstAidKit";
	_unit addItemToUniform "SmokeShell";
	for "_i" from 1 to 2 do {_unit addItemToVest "CUP_HandGrenade_RGD5";};
	for "_i" from 1 to 6 do {_unit addItemToVest "CUP_30Rnd_TE1_Red_Tracer_762x39_AK47_bakelite_M";};
	for "_i" from 1 to 2 do {_unit addItemToVest "MiniGrenade";};
	_unit addHeadgear "CUP_H_PASGTv2_ERDL_highland";

	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";
	_unit linkItem "CUP_NVG_PVS15_black";

	_face = selectRandom ["AsianHead_A3_01","AsianHead_A3_02","AsianHead_A3_03","AsianHead_A3_04","AsianHead_A3_05","AsianHead_A3_06"];
	_voice = selectRandom ["male01chi","male02chi","male03chi"];

	[_unit,_face,_voice] call BIS_fnc_setIdentity;

};

loadoutFsl = 
{
	_unit = _this select 0;

    removeAllWeapons _unit;
    removeAllItems _unit;
    removeAllAssignedItems _unit;
    removeUniform _unit;
    removeVest _unit;
    removeBackpack _unit;
    removeHeadgear _unit;
    removeGoggles _unit;

	_unit addWeapon "CUP_arifle_AK103_top_rail";
	_unit addPrimaryWeaponItem "optic_ACO_grn";
	_unit addPrimaryWeaponItem "CUP_30Rnd_TE1_Red_Tracer_762x39_AK47_bakelite_M";

	_unit forceAddUniform "CUP_U_B_CDF_FST_2";
	_unit addVest "CUP_V_B_Interceptor_Base_M81";

	_unit addItemToUniform "FirstAidKit";
	_unit addItemToUniform "SmokeShell";
	for "_i" from 1 to 2 do {_unit addItemToVest "CUP_HandGrenade_RGD5";};
	for "_i" from 1 to 6 do {_unit addItemToVest "CUP_30Rnd_TE1_Red_Tracer_762x39_AK47_bakelite_M";};
	for "_i" from 1 to 2 do {_unit addItemToVest "MiniGrenade";};
	_unit addHeadgear "CUP_H_CDF_H_PASGT_FST";

	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";

	_face = selectRandom ["AsianHead_A3_01","AsianHead_A3_02","AsianHead_A3_03","AsianHead_A3_04","AsianHead_A3_05","AsianHead_A3_06"];
	_voice = selectRandom ["male01chi","male02chi","male03chi"];

	[_unit,_face,_voice] call BIS_fnc_setIdentity;

};


loadoutGL = 
{
	_unit = _this select 0;
	
	removeAllWeapons _unit;
    removeAllItems _unit;
    removeAllAssignedItems _unit;
    removeUniform _unit;
    removeVest _unit;
    removeBackpack _unit;
    removeHeadgear _unit;
    removeGoggles _unit;

	_unit addWeapon "CUP_arifle_AK103_GL_top_rail";
	_unit addPrimaryWeaponItem "optic_ACO_grn";
	_unit addPrimaryWeaponItem "CUP_30Rnd_TE1_Red_Tracer_762x39_AK47_bakelite_M";

	_unit forceAddUniform "CUP_U_B_CDF_FST_2";
	_unit addVest "CUP_V_B_Interceptor_Grenadier_M81";

	_unit addItemToUniform "FirstAidKit";
	_unit addItemToUniform "SmokeShell";
	for "_i" from 1 to 2 do {_unit addItemToVest "CUP_HandGrenade_RGD5";};
	for "_i" from 1 to 5 do {_unit addItemToVest "MiniGrenade";};
	for "_i" from 1 to 5 do {_unit addItemToVest "CUP_1Rnd_HE_GP25_M";};
	for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
	for "_i" from 1 to 6 do {_unit addItemToVest "CUP_30Rnd_TE1_Red_Tracer_762x39_AK47_bakelite_M";};
	_unit addHeadgear "CUP_H_CDF_H_PASGT_FST";

	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";

	_face = selectRandom ["AsianHead_A3_01","AsianHead_A3_02","AsianHead_A3_03","AsianHead_A3_04","AsianHead_A3_05","AsianHead_A3_06"];
	_voice = selectRandom ["male01chi","male02chi","male03chi"];

	[_unit,_face,_voice] call BIS_fnc_setIdentity;


};

loadoutMG = 
{
	_unit = _this select 0;
	
	removeAllWeapons _unit;
    removeAllItems _unit;
    removeAllAssignedItems _unit;
    removeUniform _unit;
    removeVest _unit;
    removeBackpack _unit;
    removeHeadgear _unit;
    removeGoggles _unit;

	_unit addWeapon "CUP_lmg_Pecheneg_B50_vfg";
	_unit addPrimaryWeaponItem "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M";

	_unit forceAddUniform "CUP_U_B_CDF_FST_2";
	_unit addVest "CUP_V_B_Interceptor_Base_Olive";
	_unit addBackpack "B_TacticalPack_blk";

	_unit addItemToUniform "FirstAidKit";
	_unit addItemToUniform "SmokeShell";
	for "_i" from 1 to 2 do {_unit addItemToVest "CUP_HandGrenade_RGD5";};
	for "_i" from 1 to 2 do {_unit addItemToVest "MiniGrenade";};
	_unit addItemToVest "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M";
	for "_i" from 1 to 3 do {_unit addItemToBackpack "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M";};
	_unit addHeadgear "CUP_H_CDF_H_PASGT_FST";

	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";

	_face = selectRandom ["AsianHead_A3_01","AsianHead_A3_02","AsianHead_A3_03","AsianHead_A3_04","AsianHead_A3_05","AsianHead_A3_06"];
	_voice = selectRandom ["male01chi","male02chi","male03chi"];

	[_unit,_face,_voice] call BIS_fnc_setIdentity;

};


_unit = _this select 0;
_unit_classname = typeOf _unit;
switch _unit_classname do 
{
    case "CPC_NAM_O_VC_soldier_TL": {[_unit] call loadoutTL};
	case "CPC_NAM_O_VC_soldier_1": {[_unit] call loadoutFsl};
	case "CPC_NAM_O_VC_soldier_GL": {[_unit] call loadoutGL};
	case "CPC_NAM_O_VC_soldier_MG": {[_unit] call loadoutMG};
};