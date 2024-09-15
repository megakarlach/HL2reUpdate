/*
==============================================================================

SuperPhysics Cannon

==============================================================================
*/

$modelname weapons/v_superphyscannon.mdl

$cdmaterials models/weapons/v_physcannon models\weapons\v_hand

// whole body
$body studio "SuperPhyscannon_reference.smd"

$origin 0 0 68

// attachment points
$attachment muzzle "muzzle" 0 0.25 -2

//Upper fork
$attachment "fork1b" "Base_A"  0 0 0
$attachment "fork1m" "Prong_A" 0 0 0
$attachment "fork1t" "Tip_A" 0 0 0

$attachment "fork2b" "Base_B" 0 0 0
$attachment "fork2m" "Prong_B" 0 0 0
$attachment "fork2t" "Tip_B" 0 0 0

$poseparameter active 0 1
$weightlist prongweights "Prong_A" 1.0 "Prong_B" 1.0

// Blend animations
$animation ProngsShut "prongs" frame 0 0 weightlist prongweights
$animation ProngsOpen "prongs" frame 1 1 weightlist prongweights

$sequence idle "Idle02" loop fps 22 activity ACT_VM_IDLE 1
$sequence hold_idle "hold_Idle02" loop activity ACT_VM_RELOAD 1
$sequence draw "Draw" snap activity ACT_VM_DRAW 1
$sequence holster "Holster" activity ACT_VM_HOLSTER 1
$sequence fire "Fire" snap activity ACT_VM_PRIMARYATTACK 1
$sequence altfire "Alt_fire" snap activity ACT_VM_SECONDARYATTACK 1

$sequence chargeup "charge_up" snap fps 30 loop

$sequence prong_blend { "ProngsShut" "ProngsOpen" blend "active" 0 1 } autoplay
