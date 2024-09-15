$modelname player\red_player.mdl
$cdmaterials models\player\red

$surfaceprop "flesh"

$include "..\bones1.qci"
$include "..\ruleshierarchy.qci"
$include "..\sdk_hitbox.qci"
$include "red_player_ragdoll.qci"

$bodygroup body 
{
studio "red_player_reference.smd"
}

$bodygroup helmet 
{
studio "red_helmet_reference.smd"
blank
}

$attachment 2 "valvebiped.bip01_head1" 0 0 0 rotate 0 0 0
$attachment head "valvebiped.bip01_head1" 0 0 0 rotate 0 0 0


$includemodel player/sdk_player_shared.mdl

$bonemerge "ValveBiped.weapon_bone"
$bonemerge "ValveBiped.weapon_bone_left"


$lod 15 
{
	replacemodel "red_player_reference" "red_player_lod1" 
	replacemodel "red_helmet_reference" "red_helmet_lod1"
	replacebone "ValveBiped.Bip01_Neck1" "ValveBiped.Bip01_Head1"
	bonetreecollapse "ValveBiped.Bip01_L_Finger2"
	bonetreecollapse "ValveBiped.Bip01_L_Finger1"
	bonetreecollapse "ValveBiped.Bip01_L_Finger0"
	bonetreecollapse "ValveBiped.Bip01_R_Finger2"
	bonetreecollapse "ValveBiped.Bip01_R_Finger1"
	bonetreecollapse "ValveBiped.Bip01_R_Finger0"
} 

$lod 25 
{
	replacemodel "red_player_reference" "red_player_lod2"
	replacemodel "red_helmet_reference" "red_helmet_lod1"
	replacebone "ValveBiped.Bip01_Neck1" "ValveBiped.Bip01_Head1"
	bonetreecollapse "ValveBiped.Bip01_L_Hand"
	bonetreecollapse "ValveBiped.Bip01_R_Hand"
	bonetreecollapse "ValveBiped.Bip01_L_Toe0"
	bonetreecollapse "ValveBiped.Bip01_R_Toe0"

}

$lod 45 
{
	replacemodel "red_player_reference" "red_player_lod3"
	replacemodel "red_helmet_reference" "red_helmet_lod1"
	replacebone "ValveBiped.Bip01_Neck1" "ValveBiped.Bip01_Head1"
	bonetreecollapse "ValveBiped.Bip01_L_Forearm"
	bonetreecollapse "ValveBiped.Bip01_R_Forearm"
	bonetreecollapse "ValveBiped.Bip01_L_Foot"
	bonetreecollapse "ValveBiped.Bip01_R_Foot"
	replacebone "ValveBiped.Bip01_L_Clavicle" "ValveBiped.Bip01_Spine4"
	replacebone "ValveBiped.Bip01_R_Clavicle" "ValveBiped.Bip01_Spine4"
	replacebone "ValveBiped.Bip01_Spine1" "ValveBiped.Bip01_Spine2"
}

$lod 60 
{
	replacemodel "red_player_reference" "red_player_lod4"
	replacemodel "red_helmet_reference" "red_helmet_lod1"
	replacebone "ValveBiped.Bip01_Neck1" "ValveBiped.Bip01_Head1"
	bonetreecollapse "ValveBiped.Bip01_L_Forearm"
	bonetreecollapse "ValveBiped.Bip01_R_Forearm"
	bonetreecollapse "ValveBiped.Bip01_L_Calf"
	bonetreecollapse "ValveBiped.Bip01_R_Calf"
	replacebone "ValveBiped.Bip01_L_Clavicle" "ValveBiped.Bip01_Spine4"
	replacebone "ValveBiped.Bip01_R_Clavicle" "ValveBiped.Bip01_Spine4"
	replacebone "ValveBiped.Bip01_Spine1" "ValveBiped.Bip01_Spine2"
	replacebone "ValveBiped.Bip01_Spine" "ValveBiped.Bip01_Pelvis"
}


$shadowlod
{
	replacemodel "red_player_reference" "red_player_lod4" 
	replacemodel "red_helmet_reference" "red_helmet_lod1"
	replacebone "ValveBiped.Bip01_Neck1" "ValveBiped.Bip01_Spine4"
	bonetreecollapse "ValveBiped.Bip01_L_Forearm"
	bonetreecollapse "ValveBiped.Bip01_R_Forearm"
	bonetreecollapse "ValveBiped.Bip01_L_Calf"
	bonetreecollapse "ValveBiped.Bip01_R_Calf"
	replacebone "ValveBiped.Bip01_L_Clavicle" "ValveBiped.Bip01_Spine4"
	replacebone "ValveBiped.Bip01_R_Clavicle" "ValveBiped.Bip01_Spine4"
	replacebone "ValveBiped.Bip01_Spine1" "ValveBiped.Bip01_Spine2"
	replacebone "ValveBiped.Bip01_Spine" "ValveBiped.Bip01_Pelvis"
}
