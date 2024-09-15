/*
==============================================================================

View model Grenade

==============================================================================
*/

$modelname weapons/v_Grenade.mdl
$cdmaterials models\Weapons\V_hand models\Weapons\V_Grenade


// whole body
$body studio "Grenade_reference.smd"

$origin 0 0 68

$sequence idle01 "Idle01" loop activity ACT_VM_IDLE 1

$sequence drawbackhigh "Throw" activity ACT_VM_PULLBACK_HIGH 1 fps 20 { frames 0 5 } { event 3900 4 }
$sequence drawbacklow "Roll" activity ACT_VM_PULLBACK_LOW 1 fps 20 { frames 0 5 } { event 3900 4 }

$sequence throw "Throw" activity ACT_VM_THROW 1 fps 20 { frames 9 20 } { event 3005 1 }
$sequence roll "Roll" activity ACT_VM_SECONDARYATTACK 1 fps 20 { frames 6 20 } { event 3013 2 }
$sequence lob "Roll" activity ACT_VM_HAULBACK 1 fps 20 { frames 6 20 } { event 3016 2 }

$sequence draw "Draw" SNAP activity ACT_VM_DRAW 1
//$sequence holster "Holster" activity ACT_VM_HOLSTER 1



