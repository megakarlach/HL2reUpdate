
/*
----------------------------
Antlion Guard	
----------------------------
*/

$modelname antlion_guard.mdl
$cdmaterials models/antlion_guard

$eyeposition 0 0 90

$surfaceprop "alienflesh"

$body studio "Antlion_guard_reference.smd" 

$include "Antlion_Guard_Shared.qci"
$include "ragdoll.qci"
$include "hitbox.qci"

$lod 18
{
	replacemodel "Antlion_guard_reference" "Antlion_Guard_LOD_1" 
}

$lod 30
{
	replacemodel "Antlion_guard_reference" "Antlion_Guard_LOD_2" 	
}

$lod 48
{
	replacemodel "Antlion_guard_reference" "Antlion_Guard_LOD_3" 
}

$lod 108
{
	replacemodel "Antlion_guard_reference" "Antlion_Guard_LOD_4" 
	$include "remove_appendages.qci"
}

$shadowlod
{
	replacemodel "Antlion_guard_reference" "Antlion_Guard_LOD_shadow" 
	$include "remove_appendages.qci"
}


