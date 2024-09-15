/*
==============================================================================

Rocket launcher

==============================================================================
*/

$modelname Weapons/v_RPG.mdl

$cdmaterials Models/Weapons/v_Rocket_launcher models\Weapons\V_hand

// whole body
$body studio "RPG_reference.smd"

$origin 4 0 68

// attachment points
$attachment 0 "muzzle" 0 0 0
$attachment "laser" "muzzle" -9.00 -5.00 0.50
$attachment "laser_end" "muzzle" 100.00 -5.00 0.50

$sequence idle1 "Idle01" loop fps 30 activity ACT_VM_IDLE 1 node Idle
$sequence draw "Draw" fps 30 snap activity ACT_VM_DRAW 1 node Idle
$sequence fire "Fire" fps 30 snap activity ACT_VM_PRIMARYATTACK 1 { event 5001 "0" } Node Fire
$sequence reload "Reload" fps 30 activity ACT_VM_RELOAD 1 node Idle
$sequence up_to_down "up_to_down" fps 30 ACT_VM_IDLE_TO_LOWERED 1 transition Idle Low
$sequence down_to_up "down_to_up" fps 30 ACT_VM_LOWERED_TO_IDLE 1 transition Low Idle
$sequence down_idle "down_idle" loop fps 30 ACT_VM_IDLE_LOWERED 1 node Low

