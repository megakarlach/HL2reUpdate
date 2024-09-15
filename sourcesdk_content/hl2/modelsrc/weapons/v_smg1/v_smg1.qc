/*
==============================================================================

View model SMG1

==============================================================================
*/

$modelname weapons/v_smg1.mdl
$cdmaterials models\Weapons\V_hand models\Weapons\V_smg1


// whole body
$body studio "Smg1_reference.smd" 

$origin 0 0 68

//Muzzle flash
$attachment "muzzle" "ValveBiped.muzzle" 0 0 0 
//Shell eject
$attachment 1 "ValveBiped.eject" 0 0 0 

$sequence idle01 "Idle01" loop fps 30 activity ACT_VM_IDLE 1 node Ready
$sequence fire01 "Fire01" fps 30 snap activity ACT_VM_PRIMARYATTACK 1 node Fire {
{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" } 
{ event 6001 0 "0" }
}
$sequence fire02 "Fire02" fps 30 snap activity ACT_VM_RECOIL1 1 node Fire {
{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" } 
{ event 6001 0 "0" }
}
$sequence fire03 "Fire03" fps 30 snap activity ACT_VM_RECOIL2 1 node Fire {
{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" } 
{ event 6001 0 "0" }
}
$sequence fire04 "Fire04" fps 30 snap activity ACT_VM_RECOIL3 1 node Fire {
{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" } 
{ event 6001 0 "0" }
}
$sequence altfire "alt_fire" fps 30 snap activity ACT_VM_SECONDARYATTACK 1 node Fire
$sequence draw "Draw" fps 30 snap activity ACT_VM_DRAW 1 node Ready
$sequence reload "Reload" fps 30 activity ACT_VM_RELOAD 1 node Ready
$sequence dryfire "Dryfire" fps 30 snap activity ACT_VM_DRYFIRE 1 node Fire
$sequence idletolow "idle_to_low" fps 30 activity ACT_VM_LOWERED_TO_IDLE 1  transition Ready Low
$sequence lowtoidle "low_to_idle" fps 30 activity ACT_VM_IDLE_TO_LOWERED 1 transition Low Ready
$sequence lowidle "Low_idle" fps 30 loop activity ACT_VM_IDLE_LOWERED 1 node Low




