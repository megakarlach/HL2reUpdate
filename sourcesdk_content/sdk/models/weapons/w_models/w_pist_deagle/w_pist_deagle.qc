$modelname "weapons\w_pist_deagle.mdl"
$cdmaterials models\weapons\w_models\w_pist_deagle
$scale 1.1

$attachment "muzzle" "ValveBiped.weapon_bone" 1.00 3.50 11.00 rotate -90 -90 0
$attachment "2" "ValveBiped.weapon_bone" 1.00 3.50 9.00 rotate -90 0 0
$body studio w_pist_deagle
$sequence idle w_pist_deagle_idle snap FPS 30 activity ACT_VM_IDLE 1

// Make Third Person muzzle flashes!
$sequence attack1 "w_pist_deagle_idle" snap FPS 30 activity ACT_VM_PRIMARYATTACK 1 { 
	{ event AE_NPC_MUZZLEFLASH 0 "PISTOL MUZZLE" } 
	{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
}

$surfaceprop "weapon"

$collisionmodel "w_pist_deagle.smd" 
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


