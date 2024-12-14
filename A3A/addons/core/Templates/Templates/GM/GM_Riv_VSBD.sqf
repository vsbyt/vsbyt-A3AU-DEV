////////////////////////////
//   Rivals Information   //
///////////////////////////

["name", "VSBD"] call _fnc_saveToTemplate;
["nameLeader", "Friedhelm Busse"] call _fnc_saveToTemplate;

//////////////////////////////////////
//       	Identities    			//
//////////////////////////////////////
["faces", [
	"RussianHead_1",
	"RussianHead_2",
	"RussianHead_3",
	"RussianHead_4",
	"RussianHead_5",
	"WhiteHead_29",
	"WhiteHead_30",
	"LivonianHead_1",
	"LivonianHead_2",
	"LivonianHead_3",
	"LivonianHead_4",
	"LivonianHead_5",
	"LivonianHead_6",
	"LivonianHead_7",
	"LivonianHead_8",
	"LivonianHead_9",
	"LivonianHead_10"
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
//       Vehicles       //
//////////////////////////
["ammobox", "Box_FIA_Support_F"] call _fnc_saveToTemplate; 	//Don't touch or you die a sad and lonely death!
["surrenderCrate", "gm_AmmoBox_wood_04_empty"] call _fnc_saveToTemplate;

["vehiclesRivalsLightArmed", ["gm_pl_army_uaz469_dshkm_oli", "gm_pl_army_uaz469_dshkm_ols"]] call _fnc_saveToTemplate;
["vehiclesRivalsTrucks", ["gm_pl_army_ural4320_cargo_oli", "gm_pl_army_ural4320_cargo_ols"]] call _fnc_saveToTemplate;
["vehiclesRivalsCars", [
	"gm_pl_army_uaz469_cargo_oli",
	"gm_pl_army_uaz469_cargo_ols",
	"gm_ge_army_typ1200_cargo_oli",
	"gm_ge_army_typ1200_cargo_ols"
]] call _fnc_saveToTemplate;
["vehiclesRivalsAPCs", [
	"gm_gc_army_btr60pa_dshkm_des",
	"gm_gc_army_btr60pa_dshkm_oli",
	"gm_gc_army_btr60pa_dshkm_ols",
	"gm_gc_army_btr60pb_des",
	"gm_gc_army_btr60pb_oli",
	"gm_gc_army_btr60pb_ols"
]] call _fnc_saveToTemplate;
["vehiclesRivalsTanks", [
	"gm_gc_army_t55_des",
	"gm_gc_army_t55_oli",
	"gm_gc_army_t55_ols",
	"gm_gc_army_t55a_des",
	"gm_gc_army_t55a_oli",
	"gm_gc_army_t55a_ols",
	"gm_gc_army_t55ak_des",
	"gm_gc_army_t55ak_oli",
	"gm_gc_army_t55ak_ols",
	"gm_gc_army_pt76b_des",
	"gm_gc_army_pt76b_oli",
	"gm_gc_army_pt76b_ols"
]] call _fnc_saveToTemplate;
["vehiclesRivalsHelis", [
	"gm_gc_airforce_mi2p_beg",
	"gm_gc_airforce_mi2p_brb",
	"gm_gc_airforce_mi2p_brg",
	"gm_gc_airforce_mi2p_grg",
	"gm_gc_airforce_mi2p_grn",
	"gm_gc_airforce_mi2p_wdl",
	"gm_pl_airforce_mi2p_bgb",
	"gm_pl_airforce_mi2p_flp",
	"gm_pl_airforce_mi2p_oli",
	"gm_pl_airforce_mi2p_wdl",
	"gm_pl_airforce_mi2ch_bgb",
	"gm_pl_airforce_mi2ch_flp",
	"gm_pl_airforce_mi2ch_oli",
	"gm_pl_airforce_mi2ch_wdl"
]] call _fnc_saveToTemplate;
["vehiclesRivalsUavs", []] call _fnc_saveToTemplate;

["staticLowWeapons", [
	"gm_pl_army_dshkm_aatripod",
	"gm_gc_army_dshkm_aatripod",
	"gm_pl_army_dshkm_aatripod",
	"gm_gc_army_dshkm_aatripod",
	"gm_gc_army_spg9_tripod",
	"gm_gc_army_fagot_launcher_tripod"
]] call _fnc_saveToTemplate;
["staticMortars", ["CUP_O_2b14_82mm_RU"]] call _fnc_saveToTemplate;

["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;

["handGrenadeAmmo", ["GrenadeHand"]] call _fnc_saveToTemplate;
["mortarAmmo", ["Sh_82mm_AMOS"]] call _fnc_saveToTemplate;

["minefieldAT", ["gm_minestatic_at_tm46"]] call _fnc_saveToTemplate;
["minefieldAPERS", ["gm_minestatic_ap_pfm1"]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////
private _loadoutData = call _fnc_createLoadoutData;

_loadoutData set ["ATMines", ["gm_mine_at_tm46"]];
_loadoutData set ["APMines", ["gm_mine_ap_pfm1"]];
_loadoutData set ["lightExplosives", ["DemoCharge_Remote_Mag"]];
_loadoutData set ["heavyExplosives", ["gm_explosive_plnp_charge"]];

_loadoutData set ["antiInfantryGrenades", ["gm_handgrenade_frag_rgd5"]];
_loadoutData set ["smokeGrenades", ["gm_smokeshell_wht_gc"]];
_loadoutData set ["signalsmokeGrenades", ["gm_smokeshell_yel_gc", "gm_smokeshell_red_gc", "gm_smokeshell_org_gc", "gm_smokeshell_grn_gc", "gm_smokeshell_blu_gc", "gm_smokeshell_blk_gc"]];

_loadoutData set ["facewear", [
	"G_Aviator",
	"G_Spectacles",
	"G_Spectacles_Tinted",
	"G_Squares",
	"G_Squares_Tinted",
	"gm_gc_army_facewear_dustglasses",
	"gm_ge_facewear_glacierglasses",
	"CUP_G_TK_RoundGlasses",
	"CUP_G_TK_RoundGlasses_blk",
	"gm_xx_facewear_scarf_01_blk",
	"gm_xx_facewear_scarf_01_gry",
	"gm_xx_facewear_scarf_01_oli",
	"gm_xx_facewear_scarf_01_str"
]];
_loadoutData set ["fullmask", [
	"G_Bandanna_aviator",
	"G_Bandanna_blk",
	"G_Bandanna_oli",
	"gm_ge_facewear_stormhood_blk",
	"gm_ge_facewear_stormhood_blk"
]];

_loadoutData set ["headgear", [
	"gm_ge_headgear_hat_80_gry",
	"gm_ge_headgear_hat_80_oli",
	"gm_ge_headgear_hat_beanie_blk",
	"gm_ge_headgear_sidecap_80_m62_oli",
	"gm_xx_headgear_headwrap_01_blk",
	"gm_xx_headgear_headwrap_01_str"

]];
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["gm_watch_kosei_80"]];
_loadoutData set ["compasses", ["gm_gc_compass_f73"]];
_loadoutData set ["radios", ["ItemRadio"]];
_loadoutData set ["gpses", ["ItemGPS"]];
_loadoutData set ["NVGs", ["CUP_NVG_1PN138"]];
_loadoutData set ["binoculars", ["gm_df7x40_blk"]];
_loadoutData set ["Rangefinder", ["gm_df7x40_blk"]];

_loadoutData set ["uniforms", [
	"gm_gc_army_uniform_soldier_80_blk"
]];

_loadoutData set ["offuniforms", ["gm_gc_army_uniform_soldier_80_blk"]];
_loadoutData set ["vests", [
	"gm_pl_army_vest_80_at_gry",
	"gm_pl_army_vest_80_leader_gry",
	"gm_pl_army_vest_80_marksman_gry",
	"gm_pl_army_vest_80_mg_gry",
	"gm_pl_army_vest_80_rifleman_gry"
]];
_loadoutData set ["heavyVests", [
	"gm_ge_bgs_vest_type18_blk",
	"gm_ge_bgs_vest_type3a1_gry"
]];
_loadoutData set ["atBackpacks", [
	"gm_pl_army_backpack_at_80_gry"
]];
_loadoutData set ["backpacks", [
	"gm_ge_army_backpack_80_oli",
	"gm_pl_army_backpack_80_oli"
]];
_loadoutData set ["helmets", [
	"gm_ge_bgs_headgear_m35_53_blk",
	"gm_ge_bgs_headgear_m35_53_net_blk"
]];
_loadoutData set ["heavyHelmets", [
	"gm_ge_headgear_psh77_oli",
	"gm_ge_headgear_psh77_up_oli",
	"gm_ge_headgear_psh77_down_oli"
]];

//Item *set* definitions. These are added in their entirety to unit loadouts. No randomisation is applied.
_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the basic medical loadout for vanilla
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the standard medical loadout for vanilla
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the medic medical loadout for vanilla
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

private _slItems = ["Laserbatteries", "Laserbatteries", "Laserbatteries"];
private _eeItems = ["ToolKit", "MineDetector"];
private _mmItems = [];

if (A3A_hasACE) then {
	_slItems append ["ACE_microDAGR", "ACE_DAGR"];
	_eeItems append ["ACE_Clacker", "ACE_DefusalKit"];
	_mmItems append ["ACE_RangeCard", "ACE_ATragMX", "ACE_Kestrel4500"];
};

_loadoutData set ["items_squadleader_extras", _slItems];
_loadoutData set ["items_rifleman_extras", []];
_loadoutData set ["items_medic_extras", []];
_loadoutData set ["items_grenadier_extras", []];
_loadoutData set ["items_explosivesExpert_extras", _eeItems];
_loadoutData set ["items_engineer_extras", _eeItems];
_loadoutData set ["items_lat_extras", []];
_loadoutData set ["items_at_extras", []];
_loadoutData set ["items_aa_extras", []];
_loadoutData set ["items_machineGunner_extras", []];
_loadoutData set ["items_marksman_extras", _mmItems];
_loadoutData set ["items_sniper_extras", _mmItems];
_loadoutData set ["items_police_extras", []];
_loadoutData set ["items_crew_extras", []];
_loadoutData set ["items_unarmed_extras", []];

_loadoutData set ["rifles", [
	["gm_akm_wud", "", "", "", ["gm_30Rnd_762x39mm_B_57N231_ak47_blk", "gm_30Rnd_762x39mm_B_57N231_ak47_blk", "gm_30Rnd_762x39mm_B_T_57N231P_ak47_blk", "gm_30Rnd_762x39mm_B_T_57N231P_ak47_blk", "gm_30Rnd_762x39mm_B_57N231_akm_org", "gm_30Rnd_762x39mm_B_T_57N231P_akm_org"], [], ""],
	["gm_akms_wud", "", "", "", ["gm_30Rnd_762x39mm_B_57N231_ak47_blk", "gm_30Rnd_762x39mm_B_57N231_ak47_blk", "gm_30Rnd_762x39mm_B_T_57N231P_ak47_blk", "gm_30Rnd_762x39mm_B_T_57N231P_ak47_blk", "gm_30Rnd_762x39mm_B_57N231_akm_org", "gm_30Rnd_762x39mm_B_T_57N231P_akm_org"], [], ""],
	["gm_ak74n_wud", "", "", "", ["gm_30Rnd_545x39mm_B_7N6_ak74_org", "gm_30Rnd_545x39mm_B_T_7T3_ak74_org"], [], ""]
]];
_loadoutData set ["tunedRifles", [
	["gm_akml_wud", "", "", "gm_nspu_dovetail_gry", ["gm_30Rnd_762x39mm_AP_7N23_ak47_blk", "gm_30Rnd_762x39mm_B_57N231_ak47_blk", "gm_30Rnd_762x39mm_B_T_57N231P_ak47_blk", "gm_30Rnd_762x39mm_AP_7N23_akm_org", "gm_30Rnd_762x39mm_B_57N231_akm_org", "gm_30Rnd_762x39mm_B_T_57N231P_akm_org"], [], ""],
	["gm_akmsl_wud", "", "", "gm_nspu_dovetail_gry", ["gm_30Rnd_762x39mm_AP_7N23_ak47_blk", "gm_30Rnd_762x39mm_B_57N231_ak47_blk", "gm_30Rnd_762x39mm_B_T_57N231P_ak47_blk", "gm_30Rnd_762x39mm_AP_7N23_akm_org", "gm_30Rnd_762x39mm_B_57N231_akm_org", "gm_30Rnd_762x39mm_B_T_57N231P_akm_org"], [], ""],
	["gm_mpiak74n_blk", "", "", "gm_zfk4x25_blk", ["gm_30Rnd_545x39mm_B_7N6_ak74_blk", "gm_30Rnd_545x39mm_B_T_7T3_ak74_blk", "gm_30Rnd_545x39mm_B_7N6_ak74_org", "gm_30Rnd_545x39mm_B_T_7T3_ak74_org"], [], ""],
	["gm_mpiaks74n_blk", "", "", "gm_pka_dovetail_gry", ["gm_30Rnd_545x39mm_B_7N6_ak74_blk", "gm_30Rnd_545x39mm_B_T_7T3_ak74_blk", "gm_30Rnd_545x39mm_B_7N6_ak74_org", "gm_30Rnd_545x39mm_B_T_7T3_ak74_org"], [], ""],
	["gm_mpiaks74nk_blk", "", "", "gm_zln1k_grn_dovetail_gry", ["gm_30Rnd_545x39mm_B_7N6_ak74_blk", "gm_30Rnd_545x39mm_B_T_7T3_ak74_blk", "gm_30Rnd_545x39mm_B_7N6_ak74_org", "gm_30Rnd_545x39mm_B_T_7T3_ak74_org"], [], ""],
	["gm_lmgrpk74n_blk", "", "", "gm_zvn64_rpk", ["gm_45Rnd_545x39mm_B_7N6_ak74_blk", "gm_45Rnd_545x39mm_B_T_7T3_ak74_blk", "gm_45Rnd_545x39mm_B_7N6_ak74_org", "gm_45Rnd_545x39mm_B_T_7T3_ak74_org"], [], ""],
	["gm_mpikm72_blk", "", "", "gm_pka_dovetail_gry", ["gm_30Rnd_762x39mm_AP_7N23_mpikm_blk", "gm_30Rnd_762x39mm_B_57N231_mpikm_blk", "gm_30Rnd_762x39mm_B_T_57N231P_mpikm_blk", "gm_30Rnd_762x39mm_AP_7N23_akm_blk", "gm_30Rnd_762x39mm_B_57N231_ak47_blk", "gm_30Rnd_762x39mm_B_T_57N231P_akm_blk", "gm_30Rnd_762x39mm_AP_7N23_akm_org", "gm_30Rnd_762x39mm_B_57N231_akm_org", "gm_30Rnd_762x39mm_B_T_57N231P_akm_org"], [], ""],
	["gm_mpikms72_blk", "", "", "gm_zvn64_ak", ["gm_30Rnd_762x39mm_AP_7N23_mpikm_blk", "gm_30Rnd_762x39mm_B_57N231_mpikm_blk", "gm_30Rnd_762x39mm_B_T_57N231P_mpikm_blk", "gm_30Rnd_762x39mm_AP_7N23_akm_blk", "gm_30Rnd_762x39mm_B_57N231_ak47_blk", "gm_30Rnd_762x39mm_B_T_57N231P_akm_blk", "gm_30Rnd_762x39mm_AP_7N23_akm_org", "gm_30Rnd_762x39mm_B_57N231_akm_org", "gm_30Rnd_762x39mm_B_T_57N231P_akm_org"], [], ""],
	["gm_mpikms72k_blk", "", "", "gm_zvn64_akk", ["gm_30Rnd_762x39mm_AP_7N23_mpikm_blk", "gm_30Rnd_762x39mm_B_57N231_mpikm_blk", "gm_30Rnd_762x39mm_B_T_57N231P_mpikm_blk", "gm_30Rnd_762x39mm_AP_7N23_akm_blk", "gm_30Rnd_762x39mm_B_57N231_ak47_blk", "gm_30Rnd_762x39mm_B_T_57N231P_akm_blk", "gm_30Rnd_762x39mm_AP_7N23_akm_org", "gm_30Rnd_762x39mm_B_57N231_akm_org", "gm_30Rnd_762x39mm_B_T_57N231P_akm_org"], [], ""],
	["gm_lmgk500_blk", "", "", "gm_zvn64_lmgk500", ["gm_30Rnd_762x39mm_AP_7N23_mpikm_blk", "gm_30Rnd_762x39mm_B_57N231_mpikm_blk", "gm_30Rnd_762x39mm_B_T_57N231P_mpikm_blk", "gm_30Rnd_762x39mm_AP_7N23_akm_blk", "gm_30Rnd_762x39mm_B_57N231_ak47_blk", "gm_30Rnd_762x39mm_B_T_57N231P_akm_blk", "gm_30Rnd_762x39mm_AP_7N23_akm_org", "gm_30Rnd_762x39mm_B_57N231_akm_org", "gm_30Rnd_762x39mm_B_T_57N231P_akm_org", "gm_75Rnd_762x39mm_AP_7N23_mpikm_blk", "gm_75Rnd_762x39mm_B_57N231_mpikm_blk", "gm_75Rnd_762x39mm_B_T_57N231P_mpikm_blk"], [], ""]
]];
_loadoutData set ["enforcerRifles", [
	["gm_akmn_wud", "", "", "gm_pka_dovetail_gry", ["gm_30Rnd_762x39mm_B_57N231_ak47_blk", "gm_30Rnd_762x39mm_B_57N231_ak47_blk", "gm_30Rnd_762x39mm_B_T_57N231P_ak47_blk", "gm_30Rnd_762x39mm_B_T_57N231P_ak47_blk", "gm_30Rnd_762x39mm_B_57N231_akm_org", "gm_30Rnd_762x39mm_B_T_57N231P_akm_org"], [], ""],
	["gm_akmsn_wud", "", "", "gm_pka_dovetail_gry", ["gm_30Rnd_762x39mm_B_57N231_ak47_blk", "gm_30Rnd_762x39mm_B_57N231_ak47_blk", "gm_30Rnd_762x39mm_B_T_57N231P_ak47_blk", "gm_30Rnd_762x39mm_B_T_57N231P_ak47_blk", "gm_30Rnd_762x39mm_B_57N231_akm_org", "gm_30Rnd_762x39mm_B_T_57N231P_akm_org"], [], ""],
	["gm_ak74n_wud", "", "", "gm_pka_dovetail_gry", ["gm_30Rnd_545x39mm_B_7N6_ak74_org", "gm_30Rnd_545x39mm_B_T_7T3_ak74_org"], [], ""]
]];
_loadoutData set ["carbines", [
	["gm_mpiaks74nk_brn", "", "", "", ["gm_30Rnd_545x39mm_B_7N6_ak74_org", "gm_30Rnd_545x39mm_B_T_7T3_ak74_org"], [], ""],
	["gm_mpiaks74nk_prp", "", "", "", ["gm_30Rnd_545x39mm_B_7N6_ak74_prp", "gm_30Rnd_545x39mm_B_T_7T3_ak74_prp"], [], ""]
]];
_loadoutData set ["grenadeLaunchers", [
	["CUP_arifle_AK74_GL", "", "", "", ["CUP_30Rnd_545x39_AK74_plum_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SmokeRed_GP25_M"], ""],
	["CUP_arifle_AKM_GL", "", "", "", ["CUP_30Rnd_TE1_Red_Tracer_762x39_AK47_bakelite_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SmokeRed_GP25_M"], ""]
]];
_loadoutData set ["machineGuns", [
	["gm_mg3_blk", "", "", "", ["gm_120Rnd_762x51mm_B_T_DM21A1_mg3_grn", "gm_120Rnd_762x51mm_B_T_DM21A2_mg3_grn", "gm_120Rnd_762x51mm_B_T_DM21_mg3_grn"], [], ""]
]];
_loadoutData set ["marksmanRifles", [
	["gm_svd_wud", "", "", "gm_pso1_dovetail_blk", ["gm_10Rnd_762x54mmR_AP_7N1_svd_blk", "gm_10Rnd_762x54mmR_API_7bz3_svd_blk", "gm_10Rnd_762x54mmR_B_T_7t2_svd_blk"], [], ""],
	["gm_svd_wud", "", "", "gm_pso1_dovetail_gry", ["gm_10Rnd_762x54mmR_AP_7N1_svd_blk", "gm_10Rnd_762x54mmR_API_7bz3_svd_blk", "gm_10Rnd_762x54mmR_B_T_7t2_svd_blk"], [], ""],
	["gm_svd_wud", "", "", "gm_pso6x36_1_dovetail_blk", ["gm_10Rnd_762x54mmR_AP_7N1_svd_blk", "gm_10Rnd_762x54mmR_API_7bz3_svd_blk", "gm_10Rnd_762x54mmR_B_T_7t2_svd_blk"], [], ""],
	["gm_svd_wud", "", "", "gm_pso6x36_1_dovetail_gry", ["gm_10Rnd_762x54mmR_AP_7N1_svd_blk", "gm_10Rnd_762x54mmR_API_7bz3_svd_blk", "gm_10Rnd_762x54mmR_B_T_7t2_svd_blk"], [], ""]
]];
_loadoutData set ["lightATLaunchers", ["gm_rpg18_oli"]];
_loadoutData set ["ATLaunchers", [
	["gm_rpg7_wud", "", "", "",["gm_1Rnd_40mm_heat_pg7v_rpg7", "gm_1Rnd_40mm_heat_pg7vl_rpg7"], [], ""],
	["gm_rpg7_wud", "", "", "gm_pgo7v_blk",["gm_1Rnd_40mm_heat_pg7v_rpg7", "gm_1Rnd_40mm_heat_pg7vl_rpg7"], [], ""],
	["gm_rpg7_prp", "", "", "",["gm_1Rnd_40mm_heat_pg7v_rpg7", "gm_1Rnd_40mm_heat_pg7vl_rpg7"], [], ""],
	["gm_rpg7_prp", "", "", "gm_pgo7v_blk",["gm_1Rnd_40mm_heat_pg7v_rpg7", "gm_1Rnd_40mm_heat_pg7vl_rpg7"], [], ""]
]];
_loadoutData set ["lightHELaunchers", ["CUP_launch_RShG2"]];
_loadoutData set ["AALaunchers", ["CUP_launch_9K32Strela"]];
_loadoutData set ["sidearms", [
["CUP_hgun_Makarov", "", "", "", ["CUP_8Rnd_9x18_Makarov_M"], [], ""]
]];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////

private _crewLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_crewLoadoutData set ["vests", ["gm_pl_army_vest_80_crew_gry"]];
_crewLoadoutData set ["helmets", ["gm_ge_bgs_headgear_m38_72_bgr", "gm_ge_bgs_headgear_m38_72_goggles_bgr", "gm_ge_headgear_headset_crew_oli", "gm_ge_headgear_hat_beanie_crew_blk"]];

private _pilotLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["vests", ["gm_pl_army_vest_80_crew_gry"]];
_pilotLoadoutData set ["helmets", ["gm_gc_headgear_zsh3_wht", "gm_ge_headgear_hat_beanie_crew_blk", "gm_ge_headgear_headset_crew_oli"]];


// ##################### DO NOT TOUCH ANYTHING BELOW THIS LINE #####################


/////////////////////////////////
//    Unit Type Definitions    //
/////////////////////////////////
//These define the loadouts for different unit types.
//For example, rifleman, grenadier, squad leader, etc.
//In 95% of situations, you *should not need to edit these*.
//Almost all factions can be set up just by modifying the loadout data above.
//However, these exist in case you really do want to do a lot of custom alterations.

private _cellLeaderTemplate = {
	if (random 100 > 60) then {
		["helmets"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
	};
	["vests"] call _fnc_setVest;
	[["offuniforms", "uniforms"] call _fnc_fallback] call _fnc_setUniform;

	[selectRandom ["grenadeLaunchers", "rifles"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;
	["primary", 5] call _fnc_addAdditionalMuzzleMagazines;

	if (random 1 < 0.15) then {
		["lightATLaunchers"] call _fnc_setLauncher;
		["launcher", 1] call _fnc_addMagazines;
	} else {
		["sidearms"] call _fnc_setHandgun;
		["handgun", 2] call _fnc_addMagazines;
	};

	["items_medical_standard"] call _fnc_addItemSet;
	["items_squadLeader_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;
	["signalsmokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["gpses"] call _fnc_addGPS;
	["binoculars"] call _fnc_addBinoculars;
	["NVGs"] call _fnc_addNVGs;
};

private _mercenaryTemplate = {
	if (random 100 > 60) then {
		["heavyHelmets"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
	};
	["heavyVests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	[selectRandom ["grenadeLaunchers", "rifles", "tunedRifles"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_squadLeader_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;
	["signalsmokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["gpses"] call _fnc_addGPS;
	["binoculars"] call _fnc_addBinoculars;
	["NVGs"] call _fnc_addNVGs;
};

private _enforcerTemplate = {
	if (random 100 < 30) then {
		["helmets"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
	};
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	[["enforcerRifles", "rifles"] call _fnc_fallback] call _fnc_setPrimary;
	["primary", 4] call _fnc_addMagazines;

	if (random 1 < 0.15) then {
		["lightHELaunchers"] call _fnc_setLauncher;
		["launcher", 1] call _fnc_addMagazines;
	} else {
		["sidearms"] call _fnc_setHandgun;
		["handgun", 2] call _fnc_addMagazines;
	};

	["items_medical_standard"] call _fnc_addItemSet;
	["items_squadLeader_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;
	["signalsmokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["gpses"] call _fnc_addGPS;
	["binoculars"] call _fnc_addBinoculars;
	["NVGs"] call _fnc_addNVGs;
};

private _partisanTemplate = {
	if (random 100 < 30) then {
		["helmets"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
	};
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	if (random 1 < 0.15) then {
		["lightHELaunchers"] call _fnc_setLauncher;
		["launcher", 1] call _fnc_addMagazines;
	} else {
		["sidearms"] call _fnc_setHandgun;
		["handgun", 2] call _fnc_addMagazines;
	};

	[selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_rifleman_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _minutemanTemplate = {
	if (random 100 < 30) then {
		["helmets"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
	};
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	if (random 1 < 0.15) then {
		["lightATLaunchers"] call _fnc_setLauncher;
		["launcher", 1] call _fnc_addMagazines;
	} else {
		["sidearms"] call _fnc_setHandgun;
		["handgun", 2] call _fnc_addMagazines;
	};

	[selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_rifleman_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _medicTemplate = {
	if (random 100 < 30) then {
		["helmets"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
	};
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["carbines"] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_medic"] call _fnc_addItemSet;
	["items_medic_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _saboteurTemplate = {
	if (random 100 < 30) then {
		["helmets"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
	};
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["grenadeLaunchers"] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;
	["primary", 10] call _fnc_addAdditionalMuzzleMagazines;

	if (random 1 < 0.15) then {
		["lightHELaunchers"] call _fnc_setLauncher;
		["launcher", 1] call _fnc_addMagazines;
	} else {
		["sidearms"] call _fnc_setHandgun;
		["handgun", 2] call _fnc_addMagazines;
	};

	["items_medical_standard"] call _fnc_addItemSet;
	["items_grenadier_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 4] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _explosivesExpertTemplate = {
	if (random 100 < 30) then {
		["helmets"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
	};
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	[selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_explosivesExpert_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;

	["lightExplosives", 2] call _fnc_addItem;
	if (random 1 > 0.5) then {["heavyExplosives", 1] call _fnc_addItem;};
	if (random 1 > 0.5) then {["atMines", 1] call _fnc_addItem;};
	if (random 1 > 0.5) then {["apMines", 1] call _fnc_addItem;};

	["antiInfantryGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _atTemplate = {
	if (random 100 < 30) then {
		["helmets"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
	};
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	[selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["ATLaunchers"] call _fnc_setLauncher;
	//TODO - Add a check if it's disposable.
	["launcher", 4] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_at_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _aaTemplate = {
	if (random 100 < 30) then {
		["helmets"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
	};
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	[selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["AALaunchers"] call _fnc_setLauncher;
	//TODO - Add a check if it's disposable.
	["launcher", 3] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_aa_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _oppressorTemplate = {
	if (random 100 < 30) then {
		["helmets"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
	};
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["machineGuns"] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_machineGunner_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _sharpshooterTemplate = {
	if (random 100 < 30) then {
		["helmets"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
	};
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;


	["marksmanRifles"] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_marksman_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["Rangefinder"] call _fnc_addBinoculars;
	["NVGs"] call _fnc_addNVGs;
};

private _crewTemplate = {
	["helmets"] call _fnc_setHelmet;
	[selectRandomWeighted [[], 1.5, "fullmask", 1.25, "facewear", 1]] call _fnc_setFacewear;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	["carbines"] call _fnc_setPrimary;
	["primary", 3] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_basic"] call _fnc_addItemSet;
	["items_crew_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["gpses"] call _fnc_addGPS;
	["NVGs"] call _fnc_addNVGs;
};

private _unarmedTemplate = {
	["vests"] call _fnc_setVest;
	[selectRandomWeighted [[], 1.5, "facewear", 1, "fullmask", 1]] call _fnc_setFacewear;
	["uniforms"] call _fnc_setUniform;

	["items_medical_basic"] call _fnc_addItemSet;
	["items_unarmed_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
};

private _commanderTemplate = {
	[selectRandomWeighted ["helmets", 0.3, "headgear", 0.7]] call _fnc_setHelmet;
	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["vests"] call _fnc_setVest;
	[["offuniforms", "uniforms"] call _fnc_fallback] call _fnc_setUniform;

	["items_medical_basic"] call _fnc_addItemSet;
	["items_unarmed_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
};

////////////////////////////////////////////////////////////////////////////////////////
//  You shouldn't touch below this line unless you really really know what you're doing.
//  Things below here can and will break the gamemode if improperly changed.
////////////////////////////////////////////////////////////////////////////////////////

///////////////////////
//  Rivals Units     //
///////////////////////
private _prefix = "militia";
private _unitTypes = [
	["CellLeader", _cellLeaderTemplate, [], [_prefix, true]],
	["Mercenary", _mercenaryTemplate, [], [_prefix, true]],
	["Minuteman", _minutemanTemplate, [], [_prefix, true]],
	["Enforcer", _enforcerTemplate, [], [_prefix, true]],
	["Partisan", _partisanTemplate, [], [_prefix, true]],
	["Saboteur", _saboteurTemplate, [], [_prefix, true]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix, true]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix, true]],
	["SpecialistAT", _atTemplate, [], [_prefix, true]],
	["SpecialistAA", _aaTemplate, [], [_prefix, true]],
	["Oppressor", _oppressorTemplate, [], [_prefix, true]],
	["Sharpshooter", _sharpshooterTemplate, [], [_prefix, true]]
];

[_prefix, _unitTypes, _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;

//////////////////////
//    Misc Units    //
//////////////////////
[_prefix, [["Crew", _crewTemplate, [], [_prefix, true]]], _crewLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
[_prefix, [["Pilot", _crewTemplate, [], [_prefix, true]]], _pilotLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
[_prefix, [["Commander", _commanderTemplate, [], [_prefix, true]]], _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;
[_prefix, [["Unarmed", _unarmedTemplate, [], [_prefix, true]]], _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;
