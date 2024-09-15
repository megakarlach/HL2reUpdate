/*
==============================================================================

View model Pistol

==============================================================================
*/

$modelname weapons/v_Pistol.mdl
$cdmaterials models\Weapons\V_hand models\Weapons\V_Pistol


// whole body
$body studio "Pistol_reference.smd"

$origin 0 0 68

//Muzzle flash
$attachment "muzzle" "ValveBiped.muzzle" 0 0 0

//Shell eject
$attachment "1" "ValveBiped.eject" -1.00 0.00 0.00 rotate -0 90 -180

$sequence idle01 "Idle01" loop fps 30 activity ACT_VM_IDLE 1 node 0
$sequence idle01empty "Idle01_empty" loop fps 30 activity ACT_VM_IDLE_EMPTY 1 node 0
$sequence fire "Fire" snap fps 30 activity ACT_VM_PRIMARYATTACK 1 { event AE_MUZZLEFLASH 0 "PISTOL MUZZLE" } node 2
$sequence fire1 "Fire1" snap fps 30 activity ACT_VM_RECOIL1 1 { event AE_MUZZLEFLASH 0 "PISTOL MUZZLE" } node 2
$sequence fire2 "Fire2" snap fps 30 activity ACT_VM_RECOIL2 1 { event AE_MUZZLEFLASH 0 "PISTOL MUZZLE" } node 2
$sequence fire3 "Fire3" snap fps 30 activity ACT_VM_RECOIL3 1 { event AE_MUZZLEFLASH 0 "PISTOL MUZZLE" } node 2
$sequence fireempty "Fire_empty" fps 30 activity ACT_VM_DRYFIRE 1 node 2
$sequence draw "Draw" snap fps 30 activity ACT_VM_DRAW 1 node 0
$sequence drawempty "Draw_empty" fps 30 node 0
$sequence reload "Reload" fps 30 activity ACT_VM_RELOAD 1 node 0
$sequence holster "Holster" fps 30 activity ACT_VM_HOLSTER 1 node 0
$sequence holsterempty "Holster_empty" fps 30 activity ACT_VM_HOLSTER 1 node 0
$sequence idletolow "idle_to_lowered" fps 30 activity ACT_VM_LOWERED_TO_IDLE 1  transition 0 1
$sequence lowtoidle "lowered_to_idle01" fps 30 activity ACT_VM_IDLE_TO_LOWERED 1 transition 1 0
$sequence lowidle "idle01_lowered" fps 30 loop activity ACT_VM_IDLE_LOWERED 1 node 1