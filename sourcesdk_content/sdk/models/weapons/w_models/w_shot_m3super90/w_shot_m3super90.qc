$modelname "weapons\w_shot_m3super90.mdl"
$cdmaterials models\weapons\w_models\w_shot_m3super90
$scale 1.1

$attachment "muzzle" "ValveBiped.weapon_bone" 1.10 3.50 27.10 rotate -90 -90 0
$attachment "2" "ValveBiped.weapon_bone" 0.00 3.85 10.95 rotate -0 0 0

$body studio w_shot_m3super90
$sequence idle w_shot_m3super90_idle snap FPS 30 activity ACT_VM_IDLE 1

// Make Third Person muzzle flashes!
$sequence attack1 "w_shot_m3super90_idle" snap FPS 30 activity ACT_VM_PRIMARYATTACK 1 {
	{ event AE_NPC_MUZZLEFLASH 0 "SHOTGUN MUZZLE" }
	{ event AE_CLIENT_EFFECT_ATTACH 1 "EjectBrass_12Gauge 2 70" } 
}

$surfaceprop "weapon"

$collisionmodel "w_shot_m3super90.smd" 
{
     // Mass in kilograms
     $Mass 10
}
$keyvalues
{
	"prop_data"
	{
		"base" "Metal.Medium"
	}
}


