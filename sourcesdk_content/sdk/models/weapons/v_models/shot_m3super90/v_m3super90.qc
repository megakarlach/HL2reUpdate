$modelname "weapons\v_shot_m3super90.mdl"
$cdmaterials models\weapons\V_models\shot_m3super90 
$cdmaterials models\weapons\v_models\hands

// whole body
$body studio "m3_reference.smd" 

$attachment "muzzle" "v_weapon.m3_Parent" 0 3 18 rotate -90 -90 0
$attachment "2" "v_weapon.m3_Parent" -0.5 3.5 5 rotate -35 -180 0

$origin 0 0 0.4


// sequences
$sequence idle "m3_idle" fps 12 activity ACT_VM_IDLE 1 

$sequence shoot1 "m3_fire1" fps 32 snap activity ACT_VM_PRIMARYATTACK 1 {
	{ event AE_MUZZLEFLASH 0 "SHOTGUN MUZZLE" } 
	{ event AE_CLIENT_EFFECT_ATTACH 22 "EjectBrass_12Gauge 2 70" } 
}

$sequence shoot2 "m3_fire2" fps 37 snap activity ACT_VM_PRIMARYATTACK 1 {
	{ event AE_MUZZLEFLASH 0 "SHOTGUN MUZZLE" }
	{ event AE_CLIENT_EFFECT_ATTACH 23 "EjectBrass_12Gauge 2 70" }
}

$sequence insert "m3_insert" fps 55 activity ACT_VM_RELOAD 1 { event 5004 0 "Weapon_M3.Insertshell" } 
$sequence after_reload "m3_reload_end" fps 40 activity ACT_SHOTGUN_RELOAD_FINISH 1 { event 5004 12 "Weapon_M3.Pump" }
$sequence start_reload "m3_reload_start" fps 40 activity ACT_SHOTGUN_RELOAD_START 1
$sequence draw "m3_deploy" fps 30 activity ACT_VM_DRAW 1 { event 5004 11 "Weapon_M3.Pump" }



$bodygroup hands
{
studio "..\hands\hands_reference.smd"
}


