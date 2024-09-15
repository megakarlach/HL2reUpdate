$modelname "weapons\v_pist_deagle.mdl"
$cdmaterials models\weapons\V_models\pist_deagle 
$cdmaterials models\weapons\v_models\hands

// whole body
$body studio "deagle_reference.smd" 

$attachment "muzzle" "v_weapon.Deagle_Parent" 0.00 2.75 6.50 rotate -90 0 0
$attachment "2" "v_weapon.deagle_Parent" 0.00 2.90 0 rotate -10 180 0

$origin -0.4 0.2 0

// 6 sequences
$sequence idle1 "hl_deserteagle_idle-1" fps 16 snap activity ACT_VM_IDLE 1
$sequence shoot1 "hl_deserteagle_shoot-1" fps 40 snap activity ACT_VM_PRIMARYATTACK 1 { event AE_MUZZLEFLASH 0 "PISTOL muzzle" } { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
$sequence shoot2 "hl_deserteagle_shoot-2" fps 40 snap activity ACT_VM_PRIMARYATTACK 1 { event AE_MUZZLEFLASH 0 "PISTOL muzzle" } { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
$sequence shoot_empty "hl_deserteagle_shootlast-1" fps 40 snap activity ACT_VM_DRYFIRE 1 { event 5001 0 "21" } 
$sequence reload "hl_deserteagle_reload-1" fps 30 snap activity ACT_VM_RELOAD 1 { event 5004 0.1 "Weapon_DEagle.Slideback" } { event 5004 14 "Weapon_DEagle.Clipout" } { event 5004 34 "Weapon_DEagle.Clipin" } 
$sequence draw "hl_deserteagle_deploy-1" fps 30 snap activity ACT_VM_DRAW 1 { event 5004 1 "Weapon_DEagle.Deploy" }


//$sequence idle1 "deagle_reference.smd" 


$bodygroup hands
{
studio "..\hands\hands_reference.smd"
}


