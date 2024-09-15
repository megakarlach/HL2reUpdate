$modelname "crossbow_bolt.mdl"
$cdmaterials models\weapons\v_crossbow
//$scale 5.0

// whole body
$body body "crossbow_bolt"
$texturegroup "rebar_glow"
{
{ "rebar" }
{ "rebar_glow" }
}

$illumposition 0 -2 0

$sequence idle "crossbow_bolt"

$surfaceprop "weapon"
$collisionmodel "crossbow_bolt.smd" {
	// Mass in kilograms
	$mass 10.0	
}
