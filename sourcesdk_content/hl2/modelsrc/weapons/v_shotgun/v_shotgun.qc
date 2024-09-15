/*
==============================================================================

View model shotgun

==============================================================================
*/

$modelname weapons/v_shotgun.mdl
$cdmaterials models\Weapons\V_hand models\Weapons\V_shotgun models\weapons\shell


// whole body
$body studio "Shotgun_reference.smd"

$origin 0 0 68

//Muzzle flash
$attachment "muzzle" "ValveBiped.Muzzle" 0 0 0 rotate -90 0 0 rigid

//Shell eject
$attachment 1 "ValveBiped.Eject" 0 0 0 rotate 180 0 0 rigid

//$hierarchy "ValveBiped.Pump" "ValveBiped.Gun"
 
$sequence idle01 "Idle01" loop fps 30 activity ACT_VM_IDLE 1 node 0
$sequence fire01 "Fire01" fps 30 snap activity ACT_VM_PRIMARYATTACK 1 { event AE_MUZZLEFLASH 0 "SHOTGUN MUZZLE" } node 2
$sequence altfire "Alt_fire01" fps 30 snap activity ACT_VM_SECONDARYATTACK 1 { event AE_MUZZLEFLASH 0 "SHOTGUN MUZZLE" } node 2
$sequence draw "Draw" fps 30 snap activity ACT_VM_DRAW 1 node 0
$sequence holster "Holster" fps 30 activity ACT_VM_HOLSTER 1 node 0
$sequence reload1 "Reload_start" fps 30 activity ACT_SHOTGUN_RELOAD_START 1 node 0
$sequence reload2 "Reload_load_shell" fps 30 activity ACT_VM_RELOAD 1 node 0
$sequence reload3 "Reload_finish" fps 30 activity ACT_SHOTGUN_RELOAD_FINISH 1 node 0
$sequence pump "Pump" fps 30 activity ACT_SHOTGUN_PUMP 1 { event 6001 5 "2" } node 0
$sequence dryfire "Dryfire" fps 30 activity ACT_VM_DRYFIRE 1 node 2
	
$sequence lowered "Non_threat_idle01" loop activity ACT_VM_IDLE_LOWERED 1 node 1 
$sequence lowered_to_idle "Non_threat_to_idle01" activity ACT_VM_LOWERED_TO_IDLE 1 transition 1 0
$sequence idle_to_lowered "Idle01_to_non_threat" activity ACT_VM_IDLE_TO_LOWERED 1 transition 0 1

//$sequence sprint_idle "run" activity ACT_VM_SPRINT_IDLE 1 node 1

//$poseparameter movement 0 1

//$animation  a_movement	"move" subtract a_movement 0 fps 30
//$animation  a_nothing	"Idle01" subtract idle01 0 frames 0 1 fps 1.15

//$sequence movement_overlay { "a_movement" a_nothing blend "movement" 1 0 } delta autoplay

// ==========================
//  Dummy sequences for NPCs
// ==========================

$sequence fire "shotgun_reference" frame 0 10 fps 5 activity ACT_RANGE_ATTACK_SHOTGUN 1  { event AE_MUZZLEFLASH 0 "SHOTGUN MUZZLE" } { event 6001 0 "3" } { event 3004 0 } 

