///////////////////////////
//   Rebel Information   //
///////////////////////////
["name", "Revolutionaries"] call _fnc_saveToTemplate;

["flag", "Flag_FIA_F"] call _fnc_saveToTemplate;
["flagTexture", "gm\gm_core\data\flags\gm_flag_xx_co.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "flag_FIA"] call _fnc_saveToTemplate;

//////////////////////////
//  Mission/HQ Objects  //
//////////////////////////

// All of bellow are optional overrides.
["firstAidKits", ["gm_ge_firstaidkit_vehicle", "gm_gc_firstaidkit_vehicle", "gm_ge_army_firstaidkit_vehicle", "gm_gc_army_medkit"]] call _fnc_saveToTemplate;  // Relies on autodetection. However, item is tested for for help and reviving.
["mediKits", ["gm_gc_army_medbox", "gm_ge_army_medkit_80"]] call _fnc_saveToTemplate;  // Relies on autodetection. However, item is tested for for help and reviving.
["toolKits", ["gm_repairkit_01"]] call _fnc_saveToTemplate;  // Relies on autodetection.

["flyGear", [
	"gm_ge_uniform_pilot_commando_blk",
	"gm_ge_uniform_pilot_commando_gry",
	"gm_ge_uniform_pilot_commando_oli",
	"gm_ge_uniform_pilot_commando_rolled_blk",
	"gm_ge_uniform_pilot_commando_rolled_gry",
	"gm_ge_uniform_pilot_commando_rolled_oli"
]] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////

["vehiclesBasic", ["gm_ge_army_k125"]] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", ["gm_pl_army_uaz469_cargo"]] call _fnc_saveToTemplate;
["vehiclesLightArmed", ["gm_pl_army_uaz469_dshkm"]] call _fnc_saveToTemplate;
["vehiclesTruck", ["gm_pl_army_ural4320_cargo"]] call _fnc_saveToTemplate;
["vehiclesAT", ["gm_gc_army_uaz469_spg9"]] call _fnc_saveToTemplate;
["vehiclesAA", ["CUP_I_Ural_ZU23_NAPA"]] call _fnc_saveToTemplate;
["vehiclesBoat", ["I_C_Boat_Transport_02_F"]] call _fnc_saveToTemplate;
["vehiclesPlane", ["gm_gc_civ_l410s_passenger"]] call _fnc_saveToTemplate;

["vehiclesCivCar", ["gm_gc_civ_p601", "gm_ge_civ_w123"]] call _fnc_saveToTemplate;
["vehiclesCivTruck", ["gm_ge_civ_u1300l"]] call _fnc_saveToTemplate;
["vehiclesCivHeli", ["gm_gc_civ_mi2p"]] call _fnc_saveToTemplate;
["vehiclesCivBoat", ["C_Rubberboat"]] call _fnc_saveToTemplate;

["staticMGs", ["gm_gc_army_dshkm_aatripod"]] call _fnc_saveToTemplate;
["staticAT", ["gm_gc_army_spg9_tripod"]] call _fnc_saveToTemplate;
["staticAA", ["CUP_I_ZU23_NAPA"]] call _fnc_saveToTemplate;

["staticMortars", ["CUP_O_2b14_82mm_RU"]] call _fnc_saveToTemplate;
["staticMortarMagHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;
["staticMortarMagSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;
["staticMortarMagFlare", "8Rnd_82mm_Mo_Flare_white"] call _fnc_saveToTemplate;

["mineAT", "gm_mine_at_tm46"] call _fnc_saveToTemplate;         // , "gm_mine_at_dm1233"]]
["mineAPERS", "gm_mine_ap_dm31"] call _fnc_saveToTemplate;

["breachingExplosivesAPC", [["DemoCharge_Remote_Mag", 1]]] call _fnc_saveToTemplate;
["breachingExplosivesTank", [["gm_explosive_petn_charge", 1], ["DemoCharge_Remote_Mag", 2]]] call _fnc_saveToTemplate;

#include "GM_Reb_Vehicle_Attributes.sqf"

///////////////////////////
//  Rebel Starting Gear  //
///////////////////////////

private _initialRebelEquipment = [
	"gm_p1_blk", "gm_8Rnd_9x19mm_B_DM11_p1_blk", "gm_8Rnd_9x19mm_B_DM51_p1_blk",
	"gm_p2a1_blk", "gm_1Rnd_265mm_flare_single_red_gc", "gm_1Rnd_265mm_flare_single_wht_gc", "gm_1Rnd_265mm_flare_single_grn_DM11", "gm_1Rnd_265mm_flare_single_wht_DM15", "gm_1Rnd_265mm_flare_multi_wht_DM25",
	"gm_pm_blk", "gm_8Rnd_9x18mm_B_pst_pm_blk",
	"gm_mp2a1_blk", "gm_32Rnd_9x19mm_B_DM11_mp2_blk", "gm_32Rnd_9x19mm_B_DM51_mp2_blk",
	"sgun_HunterShotgun_01_F", "sgun_HunterShotgun_01_sawedoff_F", "2Rnd_12Gauge_Pellets", "2Rnd_12Gauge_Slug",
	["gm_m72a3_oli", 10], "gm_1Rnd_66mm_heat_m72a3",

	["IEDUrbanSmall_Remote_Mag", 10], ["IEDLandSmall_Remote_Mag", 10], ["IEDUrbanBig_Remote_Mag", 3], ["IEDLandBig_Remote_Mag", 3],
	"gm_handgrenade_frag_rgd5", "gm_handgrenade_frag_m26", "gm_handgrenade_frag_m26a1", "gm_smokeshell_wht_gc",

	"gm_ge_army_backpack_80_oli", "gm_ge_backpack_satchel_80_blk",
	"gm_dk_army_vest_54_crew", "gm_ge_army_vest_80_bag", "gm_ge_bgs_vest_80_rifleman", "gm_df7x40_blk"
];

if (A3A_hasTFAR) then {_initialRebelEquipment append ["tf_microdagr", "tf_anprc154"]};
if (A3A_hasTFAR && startWithLongRangeRadio) then {_initialRebelEquipment append ["tf_anprc155", "tf_anprc155_coyote"]};
if (A3A_hasTFARBeta) then {_initialRebelEquipment append ["TFAR_microdagr", "TFAR_anprc154"]};
if (A3A_hasTFARBeta && startWithLongRangeRadio) then {_initialRebelEquipment append ["TFAR_anprc155", "TFAR_anprc155_coyote"]};
_initialRebelEquipment append ["Chemlight_blue", "Chemlight_green", "Chemlight_red", "Chemlight_yellow"];
["initialRebelEquipment", _initialRebelEquipment] call _fnc_saveToTemplate;

_rebUniforms = [
	"gm_gc_army_uniform_soldier_80_blk", 
	"gm_ge_uniform_soldier_tshirt_90_flk", 
	"gm_ge_uniform_soldier_tshirt_90_oli",
	"gm_xx_army_uniform_fighter_01_alp",
	"gm_xx_army_uniform_fighter_01_m84",
	"gm_xx_army_uniform_fighter_01_oli",
	"gm_xx_army_uniform_fighter_02_oli",
	"gm_xx_army_uniform_fighter_02_wdl",
	"gm_xx_army_uniform_fighter_03_blk",
	"gm_xx_army_uniform_fighter_03_brn",
	"gm_xx_army_uniform_fighter_04_grn",
	"gm_xx_army_uniform_fighter_04_wdl"
	];

["uniforms", _rebUniforms] call _fnc_saveToTemplate;

["headgear", [
	"gm_ge_headgear_hat_beanie_blk",
	"gm_dk_headgear_hat_boonie_m84",
	"gm_ge_headgear_hat_boonie_flk",
	"gm_ge_headgear_hat_boonie_oli",
	"gm_ge_headgear_hat_boonie_wdl",
	"gm_pl_headgear_beret_blk_empty"
]] call _fnc_saveToTemplate;

/////////////////////
///  Identities   ///
/////////////////////

["faces", [
	"gm_face_whiteHead_01", "gm_face_whiteHead_02",
	"WhiteHead_01", "WhiteHead_02", "WhiteHead_03", "WhiteHead_04", "WhiteHead_05", "WhiteHead_06", "WhiteHead_07", "WhiteHead_08", "WhiteHead_09", "WhiteHead_10", "WhiteHead_11", "WhiteHead_12", "WhiteHead_13", "WhiteHead_14", "WhiteHead_15", "WhiteHead_16", "WhiteHead_17", "WhiteHead_18", "WhiteHead_19", "WhiteHead_20", "WhiteHead_21", "WhiteHead_23", "WhiteHead_24", "WhiteHead_25", "WhiteHead_26", "WhiteHead_27", "WhiteHead_28", "WhiteHead_29", "WhiteHead_30", "WhiteHead_31", "WhiteHead_32",
	"GreekHead_A3_05", "GreekHead_A3_06", "GreekHead_A3_11", "GreekHead_A3_12", "GreekHead_A3_13",
	"LivonianHead_1", "LivonianHead_2", "LivonianHead_3", "LivonianHead_4", "LivonianHead_5", "LivonianHead_6", "LivonianHead_7", "LivonianHead_8", "LivonianHead_9", "LivonianHead_10",
	"RussianHead_1", "RussianHead_2", "RussianHead_4"
]] call _fnc_saveToTemplate;
["voices", [
	"gm_voice_male_deu_01",
	"gm_voice_male_deu_02",
	"gm_voice_male_deu_03",
	"gm_voice_male_deu_04",
	"gm_voice_male_deu_05",
	"gm_voice_male_deu_06",
	"gm_voice_male_deu_07",
	"gm_voice_male_deu_08",
	"gm_voice_male_deu_09"
]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////



private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["gm_watch_kosei_80"]];
_loadoutData set ["compasses", ["gm_gc_compass_f73"]];
_loadoutData set ["binoculars", ["gm_df7x40_blk"]];

_loadoutData set ["uniforms", _rebUniforms];

_loadoutData set ["glasses", [
	"G_Aviator",
	"G_Spectacles",
	"G_Spectacles_Tinted",
	"G_Squares",
	"G_Squares_Tinted",
	"gm_ge_facewear_glacierglasses",
	"CUP_G_TK_RoundGlasses",
	"CUP_G_TK_RoundGlasses_blk"
]];
_loadoutData set ["goggles", ["gm_gc_army_facewear_dustglasses"]];
_loadoutData set ["facemask", [
	"G_Bandanna_aviator",
	"G_Bandanna_blk",
	"G_Bandanna_oli",
	"gm_ge_facewear_stormhood_blk",
	"gm_xx_facewear_scarf_01_blk",
	"gm_xx_facewear_scarf_01_grn",
	"gm_xx_facewear_scarf_01_gry",
	"gm_xx_facewear_scarf_01_oli"
]];

_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

////////////////////////
//  Rebel Unit Types  //
///////////////////////.

private _squadLeaderTemplate = {
	["uniforms"] call _fnc_setUniform;
	[selectRandomWeighted [[], 1.25, "glasses", 1, "goggles", 0.75, "facemask", 1]] call _fnc_setFacewear;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["binoculars"] call _fnc_addBinoculars;
};

private _riflemanTemplate = {
	["uniforms"] call _fnc_setUniform;
	[selectRandomWeighted [[], 1.25, "glasses", 1, "goggles", 0.75, "facemask", 1]] call _fnc_setFacewear;
	
	["items_medical_standard"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
};

private _prefix = "militia";
private _unitTypes = [
	["Petros", _squadLeaderTemplate],
	["SquadLeader", _squadLeaderTemplate],
	["Rifleman", _riflemanTemplate],
	["staticCrew", _riflemanTemplate],
	["Medic", _riflemanTemplate, [["medic", true]]],
	["Engineer", _riflemanTemplate, [["engineer", true]]],
	["ExplosivesExpert", _riflemanTemplate, [["explosiveSpecialist", true]]],
	["Grenadier", _riflemanTemplate],
	["LAT", _riflemanTemplate],
	["AT", _riflemanTemplate],
	["AA", _riflemanTemplate],
	["MachineGunner", _riflemanTemplate],
	["Marksman", _riflemanTemplate],
	["Sniper", _riflemanTemplate],
	["Unarmed", _riflemanTemplate]
];

[_prefix, _unitTypes, _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;
