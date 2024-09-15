/*
==============================================================================

male06

==============================================================================
*/


$modelname sdk\Humans\male_06_sdk.mdl
$cdmaterials sdk\models\Humans\Male

//start eye/face data
$eyeposition 0 0 70

// head controllers
$attachment "eyes" "ValveBiped.Bip01_Head1" 0.043 -4.2197 67.5554 absolute
$attachment "mouth" "ValveBiped.Bip01_Head1" 1.00 -6.30 0.00 rotate 0 -80 -90


$model male_06 "male_06_reference.smd"{
	eyeball righteye "ValveBiped.Bip01_Head1" -1.2711 -4.2197 67.5593 "eyeball_r" 1 4 "pupil_r" 0.63
	eyeball lefteye "ValveBiped.Bip01_Head1" 1.3572 -4.2197 67.5514 "eyeball_l" 1 -4 "pupil_l" 0.63

	eyelid  upper_right "male_06_expressions" lowerer 1 -0.2621 neutral 0 0.1287 raiser 2 0.2467 split 0.1 eyeball righteye
	eyelid  lower_right "male_06_expressions" lowerer 3 -0.3409 neutral 0 -0.2156 raiser 4 -0.0736 split 0.1 eyeball righteye
	eyelid  upper_left "male_06_expressions" lowerer 1 -0.2621 neutral 0 0.1287 raiser 2 0.2467 split -0.1 eyeball lefteye
	eyelid  lower_left "male_06_expressions" lowerer 3 -0.3409 neutral 0 -0.2156 raiser 4 -0.0736 split -0.1 eyeball lefteye

	mouth 0 "mouth" "ValveBiped.Bip01_Head1" 0 1 0     // mouth illumination

	flexfile "male_06_expressions" {
		$include "../standardflex_xsi.qci"
	}

	$include "../facerules_xsi.qci"
	$include "../bodyrules_xsi.qci"

}
//end eye/face data	


$include "../standardhierarchy.qci"
$alwayscollapse "male_06"
$alwayscollapse "XSISceneRoot"


$proceduralbones "../male.vrd"



$pushd "../male_animations_sdk"
$include "../male_animations_sdk/male_shared_XSI_sdk.qci"
$include "../male_animations_sdk/body_poses_lean.qci"
$include "../male_animations_sdk/WeaponAnims_shared_sdk.qci"
$popd



$lod 10 
{
	replacemodel "Male_06_reference" "Male_06_LOD_1" 
}

$lod 20 
{
	replacemodel "Male_06_reference" "Male_06_LOD_2"
	$include "../removehands.qci"
	
}

$lod 35 
{
	replacemodel "Male_06_reference" "Male_06_LOD_3"
	$include "../lowesthumanskeleton.qci"
	$include "../lowesthumannohelpers.qci"
	nofacial
}

$lod 50 
{
	replacemodel "Male_06_reference" "Male_06_LOD_4"
	$include "../lowesthumanskeleton.qci"
	$include "../lowesthumannohelpers.qci"
	nofacial
}

$lod 90 
{
	replacemodel "Male_06_reference" "Male_06_LOD_5"
	$include "../lowesthumanskeleton.qci"
	$include "../lowesthumannohelpers.qci"
	nofacial
}

$shadowlod
{
	replacemodel "Male_06_reference" "Male_06_LOD_shadow" 
	$include "../lowesthumanskeleton.qci"
	$include "../lowesthumannohelpers.qci"
	nofacial
}

$include "hitbox.qci"
$include "ragdoll.qci"
