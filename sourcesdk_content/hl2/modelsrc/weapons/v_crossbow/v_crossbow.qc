
//======================================

//	V_Crossbow

//======================================

$modelname "Weapons/v_crossbow.mdl"
$cdmaterials models\weapons\v_crossbow models\Weapons\V_hand
$scale 1.0

// whole body

$body studio "Crossbow_reference.smd"

$texturegroup "rebar_glow"
{
{ "crossbow dirtmap" }
{ "crossbow dirtmap_glow" }
}
$origin 0 0 68

//Muzzle flash
$attachment spark "Crossbow_model.Spark2" 0.5 0 0 rotate -90 0 0
$attachment bolt_start "Crossbow_model.bolt" 0 0 16 rotate -90 0 0
$attachment bolt_end "Crossbow_model.bolt" 0 0 -4 rotate -90 0 0

$sequence idle "idle" loop fps 30 activity ACT_VM_IDLE 1 node Ready
$sequence idle_empty "idle_empty" loop fps 30 activity ACT_VM_FIDGET 1 node Ready
$sequence draw "draw" snap fps 30 activity ACT_VM_DRAW 1 node Ready {
{ event 3013 14 } // Start of charge-up
{ event 3016 28 } // Ready charged
}

$sequence fire "fire" snap fps 30 activity ACT_VM_PRIMARYATTACK 1 node Ready

$sequence reload "reload" fps 30 activity ACT_VM_RELOAD 1 node Ready {
{ event 3005 28 } // Initial placement of the bolt
{ event 3013 35 } // Start of charge-up
{ event 3016 55 } // Ready charged
}

$sequence holster "Holster" fps 30 activity ACT_VM_HOLSTER 1 node Ready
$sequence idletolow "idle_to_lowidle" fps 30 activity ACT_VM_LOWERED_TO_IDLE 1  transition Ready Low
$sequence lowtoidle "lowidle_to_idle" fps 30 activity ACT_VM_IDLE_TO_LOWERED 1 transition Low Ready
$sequence lowidle "Lowidle" fps 30 loop activity ACT_VM_IDLE_LOWERED 1 node Low
