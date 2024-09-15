//======================================
//  Police SDK
//======================================

$eyeposition 0 0 72

$bbox -13 -13 0 13 13 72

$modelname Characters\Police_SDK.mdl
$cdmaterials models\police

$model police "Police_SDK_reference.smd"

$includemodel characters\Player_animations.mdl

$include "../../humans/standardhierarchy.qci"
$include "../../humans/male/commonbones.qci"

$include "ruleshierarchy.qci"
$include "hitbox.qci"
$include "ragdoll.qci"

//==============================================================================

$lod 12 
{
	replacemodel "Police_SDK_reference" "Police_LOD_1" 
}

$lod 18 
{
	replacemodel "Police_SDK_reference" "Police_LOD_2" 
	$include "../../Humans/removehands.qci"
}

$lod 42
{
	replacemodel "Police_SDK_reference" "Police_LOD_3" 
	$include "../../Humans/lowesthumanskeleton.qci"
}

$lod 55 
{
	replacemodel "Police_SDK_reference" "Police_LOD_4" 
	$include "../../Humans/lowesthumanskeleton.qci"
}

$lod 80 
{
	replacemodel "Police_SDK_reference" "Police_LOD_5" 
	$include "../../Humans/lowesthumanskeleton.qci"
}

$shadowlod
{
	replacemodel "Police_SDK_reference" "Police_shadow_LOD" 
	$include "../../Humans/lowesthumanskeleton.qci"
}

//==============================================================================