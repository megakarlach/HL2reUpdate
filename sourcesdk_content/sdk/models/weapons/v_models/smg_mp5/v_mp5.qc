$modelname "weapons\v_smg_mp5.mdl"
$cdmaterials models\weapons\V_models\smg_mp5
$cdmaterials models\weapons\v_models\hands


$attachment "muzzle" "v_weapon.MP5_Parent" 0.10 3.00 13.50 rotate -90 0 0
$attachment "2" "v_weapon.MP5_Parent" 0.00 3.50 4.50 rotate 0 0 0

$origin -0.4 0.3 0

// whole body
$body studio "mp5_reference.smd" 

// 6 sequences
$sequence idle "mp5_idle-1" fps 12 snap activity ACT_VM_IDLE 1
$sequence reload1 "mp5_reload-1" fps 38 snap activity ACT_VM_RELOAD 1 { event 5004 12 "Weapon_MP5Navy.Clipout" } { event 5004 44 "Weapon_MP5Navy.Clipin" } { event 5004 86 "Weapon_MP5Navy.Slideback" } 
$sequence draw "mp5_deploy-1" fps 35 snap activity ACT_VM_DRAW 1 { event 5004 13 "Weapon_MP5Navy.Slideback" } 
$sequence shoot1 "mp5_fire-1" fps 30 snap activity ACT_VM_PRIMARYATTACK 1 { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" } { event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
$sequence shoot2 "mp5_fire-2" fps 30 snap activity ACT_VM_PRIMARYATTACK 1  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" } { event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
$sequence shoot3 "mp5_fire-3" fps 30 snap activity ACT_VM_PRIMARYATTACK 1  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" } { event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }

$bodygroup hands
{
studio "..\hands\hands_reference.smd"
}