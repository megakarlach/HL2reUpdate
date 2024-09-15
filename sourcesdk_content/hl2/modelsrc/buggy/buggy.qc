/*
----------------
Buggy (Jeep) QC
----------------
*/

$modelname buggy.mdl

$cdmaterials models/buggy
$origin 0 0 0 90
$scale 1.0
$body "Body" "buggy_reference.smd"
$surfaceprop "metal"
$noforcedfade

$include "buggy_shared.qci"

$bodygroup tau_cannon
{
blank
studio "tau_reference.smd"
}

$lod 18
{
	replacemodel "buggy_reference" "buggy_lod_1"
	//replacebone "rig_buggy.lid" "rig_buggy.frame"
	replacebone "rig_buggy.latch" "rig_buggy.frame"
	replacebone "rig_buggy.speedo" "rig_buggy.frame"
	replacebone "rig_buggy.steer_wheel" "rig_buggy.frame"
	replacebone "rig_buggy.rr_sleeve" "rig_buggy.frame"
	replacebone "rig_buggy.rr_piston" "rig_buggy.frame"
	replacebone "rig_buggy.rl_piston" "rig_buggy.frame"
	replacebone "rig_buggy.rl_piston" "rig_buggy.frame"
	replacebone "rig_buggy.steer_arm" "rig_buggy.frame"
	replacebone "rig_buggy.fr_sleeve" "rig_buggy.frame"
	replacebone "rig_buggy.fl_sleeve" "rig_buggy.frame"
}

$lod 40
{
	replacemodel "buggy_reference" "buggy_lod_2"
	replacebone "rig_buggy.lid" "rig_buggy.frame"
	replacebone "rig_buggy.latch" "rig_buggy.frame"
	replacebone "rig_buggy.speedo" "rig_buggy.frame"
	replacebone "rig_buggy.steer_wheel" "rig_buggy.frame"
	replacebone "rig_buggy.rr_sleeve" "rig_buggy.frame"
	replacebone "rig_buggy.rr_piston" "rig_buggy.frame"
	replacebone "rig_buggy.rl_piston" "rig_buggy.frame"
	replacebone "rig_buggy.rl_piston" "rig_buggy.frame"
	replacebone "rig_buggy.steer_arm" "rig_buggy.frame"
	replacebone "rig_buggy.fr_sleeve" "rig_buggy.frame"
	replacebone "rig_buggy.fl_sleeve" "rig_buggy.frame"
	replacebone "rig_buggy.axel_rr" "rig_buggy.frame"
	replacebone "rig_buggy.axel_rl" "rig_buggy.frame"
	replacebone "rig_buggy.axel_fr" "rig_buggy.frame"
	replacebone "rig_buggy.axel_fl" "rig_buggy.frame"
}

$lod 80
{
	replacemodel "buggy_reference" "buggy_lod_3"
	replacebone "rig_buggy.lid" "rig_buggy.frame"
	replacebone "rig_buggy.latch" "rig_buggy.frame"
	replacebone "rig_buggy.speedo" "rig_buggy.frame"
	replacebone "rig_buggy.steer_wheel" "rig_buggy.frame"
	replacebone "rig_buggy.rr_sleeve" "rig_buggy.frame"
	replacebone "rig_buggy.rr_piston" "rig_buggy.frame"
	replacebone "rig_buggy.rl_piston" "rig_buggy.frame"
	replacebone "rig_buggy.rl_piston" "rig_buggy.frame"
	replacebone "rig_buggy.steer_arm" "rig_buggy.frame"
	replacebone "rig_buggy.fr_sleeve" "rig_buggy.frame"
	replacebone "rig_buggy.fl_sleeve" "rig_buggy.frame"
	replacebone "rig_buggy.axel_rr" "rig_buggy.frame"
	replacebone "rig_buggy.axel_rl" "rig_buggy.frame"
	replacebone "rig_buggy.axel_fr" "rig_buggy.frame"
	replacebone "rig_buggy.axel_fl" "rig_buggy.frame"
}

$lod 110
{
	replacemodel "buggy_reference" "buggy_lod_4"
	replacebone "rig_buggy.lid" "rig_buggy.frame"
	replacebone "rig_buggy.latch" "rig_buggy.frame"
	replacebone "rig_buggy.speedo" "rig_buggy.frame"
	replacebone "rig_buggy.steer_wheel" "rig_buggy.frame"
	replacebone "rig_buggy.rr_sleeve" "rig_buggy.frame"
	replacebone "rig_buggy.rr_piston" "rig_buggy.frame"
	replacebone "rig_buggy.rl_piston" "rig_buggy.frame"
	replacebone "rig_buggy.rl_piston" "rig_buggy.frame"
	replacebone "rig_buggy.steer_arm" "rig_buggy.frame"
	replacebone "rig_buggy.fr_sleeve" "rig_buggy.frame"
	replacebone "rig_buggy.fl_sleeve" "rig_buggy.frame"
	replacebone "rig_buggy.axel_rr" "rig_buggy.frame"
	replacebone "rig_buggy.axel_rl" "rig_buggy.frame"
	replacebone "rig_buggy.axel_fr" "rig_buggy.frame"
	replacebone "rig_buggy.axel_fl" "rig_buggy.frame"
}

$shadowlod
{
	replacemodel "buggy_reference" "buggy_lod_4"
	replacebone "rig_buggy.lid" "rig_buggy.frame"
	replacebone "rig_buggy.latch" "rig_buggy.frame"
	replacebone "rig_buggy.speedo" "rig_buggy.frame"
	replacebone "rig_buggy.steer_wheel" "rig_buggy.frame"
	replacebone "rig_buggy.rr_sleeve" "rig_buggy.frame"
	replacebone "rig_buggy.rr_piston" "rig_buggy.frame"
	replacebone "rig_buggy.rl_piston" "rig_buggy.frame"
	replacebone "rig_buggy.rl_piston" "rig_buggy.frame"
	replacebone "rig_buggy.steer_arm" "rig_buggy.frame"
	replacebone "rig_buggy.fr_sleeve" "rig_buggy.frame"
	replacebone "rig_buggy.fl_sleeve" "rig_buggy.frame"
	replacebone "rig_buggy.axel_rr" "rig_buggy.frame"
	replacebone "rig_buggy.axel_rl" "rig_buggy.frame"
	replacebone "rig_buggy.axel_fr" "rig_buggy.frame"
	replacebone "rig_buggy.axel_fl" "rig_buggy.frame"
	removemesh "models/buggy/ammo_box"
}