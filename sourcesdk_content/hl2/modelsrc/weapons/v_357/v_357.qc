/*
==============================================================================

View model 357

==============================================================================
*/

$modelname weapons/v_357.mdl
$cdmaterials models\Weapons\V_hand models\Weapons\V_357


// whole body
$body studio "Python_357_reference.smd" 

$origin 2 -4 67

//Muzzle flash
$attachment "muzzle" "muzzle" 0 0 0 rotate -90 90 0

$sequence idle01 "Idle01" loop fps 30 activity ACT_VM_IDLE 1 node Ready
$sequence fire "Fire01" snap fps 30 activity ACT_VM_PRIMARYATTACK 1 { event AE_MUZZLEFLASH 0 "357 muzzle" } node Fire
$sequence draw "Draw" snap fps 30 activity ACT_VM_DRAW 1 node Ready
$sequence reload "Reload" fps 30 activity ACT_VM_RELOAD 1 node Ready {
{ event AE_CL_PLAYSOUND 28 "Weapon_357.OpenLoader" }
{ event AE_CL_PLAYSOUND 39 "Weapon_357.RemoveLoader" }
{ event 3015 55 } 
{ event AE_CL_PLAYSOUND 67 "Weapon_357.ReplaceLoader" }
{ event AE_CL_PLAYSOUND 92 "Weapon_357.Spin" }
}

$sequence holster "Holster" fps 30 activity ACT_VM_HOLSTER 1 node Ready
$sequence idletolow "idle_to_low" fps 30 activity ACT_VM_LOWERED_TO_IDLE 1  transition Ready Low 
$sequence lowtoidle "low_to_idle" fps 30 activity ACT_VM_IDLE_TO_LOWERED 1 transition Low Ready
$sequence lowidle "Low_idle" fps 30 loop activity ACT_VM_IDLE_LOWERED 1 node Low



