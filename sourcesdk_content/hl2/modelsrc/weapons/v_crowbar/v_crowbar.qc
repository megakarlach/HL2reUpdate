/*
==============================================================================

Crowbar

==============================================================================
*/

$modelname Weapons/v_crowbar.mdl
$cdmaterials models\Weapons\V_hand models\Weapons\V_crowbar

// whole body
$body studio "crowbar_reference.smd"

//Tip of axe
$attachment 0 "ValveBiped.Tip" 0 0 0

$origin 0 0 68

$sequence idle01 "Idle01" loop fps 30 activity ACT_VM_IDLE 1
$sequence draw "draw" fps 30 snap activity ACT_VM_DRAW 1
$sequence misscenter1 "Attackcenter_miss_1" fps 30 snap activity ACT_VM_MISSCENTER 1
$sequence misscenter2 "Attackcenter_miss_2" fps 30 snap activity ACT_VM_MISSCENTER 1
$sequence hitcenter1 "Attackcenter01" fps 30 snap activity ACT_VM_HITCENTER 1
$sequence hitcenter2 "Attackcenter02" fps 30 snap activity ACT_VM_HITCENTER 1
$sequence hitcenter3 "Attackcenter03" fps 30 snap activity ACT_VM_HITCENTER 1
$sequence hitkill1 "Hitkill01" fps 30 snap activity ACT_VM_HITKILL 1
$sequence holster "Holster" fps 30 activity ACT_VM_HOLSTER 1
