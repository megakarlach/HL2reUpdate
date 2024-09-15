$modelname "weapons\w_smg_mp5.mdl"
$cdmaterials models\weapons\w_models\w_smg_mp5
$scale 1.1

$attachment "muzzle" "ValveBiped.weapon_bone" 1.00 5.00 21.00 rotate -90 -90 0
$attachment "2" "ValveBiped.weapon_bone" 0.00 3.85 10.95 rotate -0 0 0

$body studio w_smg_mp5
$sequence idle w_smg_mp5_idle snap FPS 30 activity ACT_VM_IDLE 1

// Make Third Person muzzle flashes!
$sequence attack1 "w_smg_mp5_idle" snap FPS 30 activity ACT_VM_PRIMARYATTACK 1 {
	{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
	{ event AE_NPC_MUZZLEFLASH 0 "SMG1 MUZZLE" }
}

$surfaceprop "weapon"

$collisionmodel "w_smg_mp5.smd" 
{
     // Mass in kilograms
     $Mass 5.0
}
$keyvalues
{
	"prop_data"
	{
		"base" "Metal.Small"
	}
}


