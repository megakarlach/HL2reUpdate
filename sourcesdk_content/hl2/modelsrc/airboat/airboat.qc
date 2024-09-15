/*
----------------
Airboat QC
----------------
*/


$modelname airboat.mdl
$origin 0 0 0 90
$scale 1.0
$body "Body" "airboat_reference.smd"
$cdmaterials models/airboat
$surfaceprop "slipperymetal"
$mostlyopaque

//-----Body Groups-----
$bodygroup Weapon
{
blank
studio "Weapon_reference.smd"
}

$bodygroup Prop_Solid
{
blank
studio "PropellerSolid_reference.smd"
}

$bodygroup Prop_Blur2
{
blank
studio "PropellerBlur2_reference.smd"
}

//----- KeyValues -----

$keyvalues
{
	"vehicle_entry"
	{
		// Entries are: Key = enter animation, Value = Hitbox number
		"enter1"	"0"
		"enter2"	"1"
		"enter3"	"2"
		"enter4"	"3"
		"enter5"	"4"	
		"enter6"	"5"
		"enter7"	"6"
		"enter8"	"7"
			
	}

	"vehicle_exit"
	{
		// Entries are: Key = exit animation, Value = "upright" or "upsidedown"
		"exit1" "upright"
		"exit2" "upright"
		"exit3"	"upright"
		"exit4"	"upright"
		"exit4"	"upsidedown"
		"exit5"	"upsidedown"
		"exit6"	"upsidedown"
		"exit7"	"upsidedown"		
		"exit8"	"upright"
		"exit9"	"upright"
		"exit10" "upright"
	}
}


// -----attachments-----

// NOTE: The muzzle must be attachment 0!!! 
$attachment "muzzle" "Airboat.Muzzle" 0 0 0 rigid

$attachment vehicle_driver_eyes "Airboat.view" 0.00 0.00 -4.00 rotate 0 0 0
$attachment "vehicle_feet_passenger0" "Airboat.view" 0.00 0.00 -32 rotate 0 0 0
$attachment "vehicle_headlight" "airboat.hull" 0.00 50.00 28.00 rotate -90 -90 0

$attachment "gun" "Airboat.Gun" 0 0 0 rigid

$attachment "wheel_fl" "Airboat.Pontoon_L" 28 -4 80 rotate -0 -180 0
$attachment "wheel_fr" "Airboat.Pontoon_R" -28 -4 80 rotate -0 -180 0
$attachment "wheel_rl" "Airboat.Pontoon_L" 22 -4 -40 rotate 0 -180 0
$attachment "wheele_rr" "Airboat.Pontoon_R" -22 -4 -40 rotate 0 -180 0

$attachment "raytrace_fl" "Airboat.Pontoon_L" 28 -4 80 rotate -0 -180 0
$attachment "raytrace_fr" "Airboat.Pontoon_R" -28 -4 80 rotate -0 -180 0
$attachment "raytrace_rl" "Airboat.Pontoon_L" 22 -4 -40 rotate 0 -180 0
$attachment "raytrace_rr" "Airboat.Pontoon_R" -22 -4 -40 rotate 0 -180 0

$attachment "splash_pt" "airboat.hull" 0.00 0.00 -110.00 rotate 0 0 0


// Final eye positions and orientations after finishing the enter or exit animation.
$attachment enter1 "Airboat.enter1" 0 0 0 rotate -90 0 0 rigid
$attachment enter2 "Airboat.enter2" 0 0 0 rotate -90 0 0 rigid
$attachment enter3 "Airboat.enter3" 0 0 0 rotate -90 0 0 rigid
$attachment enter4 "Airboat.enter4" 0 0 0 rotate -90 0 0 rigid
$attachment enter5 "Airboat.enter5" 0 0 0 rotate -90 0 0 rigid
$attachment enter6 "Airboat.enter6" 0 0 0 rotate -90 0 0 rigid
$attachment enter7 "Airboat.enter7" 0 0 0 rotate -90 0 0 rigid
$attachment enter8 "Airboat.enter8" 0 0 0 rotate -90 0 0 rigid

$attachment exit1 "Airboat.exit1" 0 0 0 rotate -90 0 0 rigid
$attachment exit2 "Airboat.exit2" 0 0 0 rotate -90 0 0 rigid
$attachment exit3 "Airboat.exit3" 0 0 0 rotate -90 0 0 rigid
$attachment exit4 "Airboat.exit4_5" 0 0 0 rotate -90 0 0 rigid
$attachment exit5 "Airboat.exit4_5" 0 0 0 rotate -90 0 0 rigid
$attachment exit6 "Airboat.exit6" 0 0 0 rotate -90 0 0 rigid
$attachment exit7 "Airboat.exit7" 0 0 0 rotate -90 0 0 rigid
$attachment exit8 "Airboat.Hull" 64.00 64.00 64.00 rotate -90 0 0 rigid
$attachment exit9 "Airboat.Hull" -64.0 64.00 64.00 rotate -90 0 0 rigid
$attachment exit10 "Airboat.Hull" 0 64.00 -120.00 rotate -90 0 0 rigid


//----- Pose Parameters -----

$poseparameter "vehicle_weapon_yaw" 0 1
$poseparameter "vehicle_weapon_pitch" 0 1
$poseparameter "vehicle_steer" -1 1


// --------- Animation Sequences -------
$sequence "idle" "airboat_reference" fps 30 loop
$sequence propeller_spin1 PropellerSpin fps 100 loop

//$weightlist gun { "Airboat.Muzzle" 1.0 }
//$sequence fire_gun "airboat_firegun" fps 30 weightlist gun loop { event 5001 1 "AirboatMuzzleFlash" }

$sequence "enter1" "airboat_Enter1" fps 40 snap
$sequence "enter2" "airboat_Enter2" fps 40 snap
$sequence "enter3" "airboat_Enter3" fps 40 snap
$sequence "enter4" "airboat_Enter4" fps 40 snap
$sequence "enter5" "airboat_Enter5" fps 40 snap
$sequence "enter6" "airboat_Enter6" fps 40 snap
$sequence "enter7" "airboat_Enter7" fps 40 snap
$sequence "enter8" "airboat_Enter8" fps 40 snap

$sequence "exit1" "airboat_Exit1" fps 40 fadeout 0
$sequence "exit1a" "airboat_Exit1a" fps 40 fadeout 0
$sequence "exit2" "airboat_Exit2" fps 40 fadeout 0
$sequence "exit2a" "airboat_Exit2a" fps 40 fadeout 0
$sequence "exit3" "airboat_Exit3" fps 40 fadeout 0
$sequence "exit4" "airboat_Exit4" fps 40 fadeout 0
$sequence "exit5" "airboat_Exit5" fps 40 fadeout 0
$sequence "exit6" "airboat_Exit6" fps 40 fadeout 0
$sequence "exit7" "airboat_Exit7" fps 40 fadeout 0
$sequence "exit8" "airboat_Exit1" fps 40 fadeout 0
$sequence "exit9" "airboat_Exit2" fps 40 fadeout 0
$sequence "exit10" "airboat_Exit2" fps 40 fadeout 0

$animation neutral "airboat_reference" frames 0 0 

//Gun Aim
$weightlist weapon { "Airboat.Weapon_Yaw" 1.0 }
$animation aim_neutral Weapon_Aim frame 0 0 weightlist weapon
$animation aim_neutral_b Weapon_Aim frame 0 0 subtract aim_neutral 0 weightlist weapon
$animation aim_up Weapon_Aim frame 1 1 subtract aim_neutral 0 weightlist weapon  
$animation aim_down Weapon_Aim frame 2 2 subtract aim_neutral 0 weightlist weapon
$animation aim_right Weapon_Aim frame 3 3 subtract aim_neutral 0 weightlist weapon
$animation aim_left Weapon_Aim frame 4 4 subtract aim_neutral 0 weightlist weapon
$sequence weapon_pitch { aim_up aim_down blend "vehicle_weapon_pitch" -60 10 } weightlist weapon delta autoplay hidden
$sequence weapon_yaw { aim_right aim_neutral_b aim_left blend "vehicle_weapon_yaw" -165 75 } weightlist weapon delta autoplay hidden


//Frame Flex Right
$weightlist pontoon_r { "Airboat.Pontoon_R" 1.0 }
$animation a_flex_r_low Frame_Flex frame 0 0 subtract neutral 0 weightlist pontoon_r 
$animation a_flex_r_high Frame_Flex frame 2 2 subtract neutral 0 weightlist pontoon_r 
$sequence frame_flex_r { a_flex_r_low a_flex_r_high blend "Frame_Flex_R" -1 1 } weightlist pontoon_r delta autoplay hidden

//Frame Flex Left
$weightlist pontoon_l { "Airboat.Pontoon_L" 1.0 }
$animation a_flex_l_low Frame_Flex frame 0 0 subtract neutral 0 weightlist pontoon_l 
$animation a_flex_l_high Frame_Flex frame 2 2 subtract neutral 0 weightlist pontoon_l 
$sequence frame_flex_l { a_flex_l_low a_flex_l_high blend "Frame_Flex_L" -1 1 } weightlist pontoon_l delta autoplay hidden

//Gauge
$weightlist gauge { "Airboat.Gauge" 1.0 }
$animation a_gauge_slow Gauge frame 0 0 subtract neutral 0 weightlist gauge
$animation a_gauge_fast Gauge frame 1 1 subtract neutral 0 weightlist gauge
$sequence gauge { a_gauge_slow a_gauge_fast blend "Gauge" 0 1 } weightlist gauge delta autoplay hidden

//Prop Solid Spin
$poseparameter "Prop_Spin" -180 180 wrap
$weightlist prop_solid { "Airboat.Propeller_Solid" 1.0 }
$animation a_prop_spin0 Prop_Solid frame 0 0 subtract neutral 0 weightlist prop_solid 
$animation a_prop_spin120 Prop_Solid frame 1 1 subtract neutral 0 weightlist prop_solid   
$animation a_prop_spin240 Prop_Solid frame 2 2 subtract neutral 0 weightlist prop_solid  
$sequence prop_spin { a_prop_spin0 a_prop_spin120 a_prop_spin240 a_prop_spin0 blendwidth 4 blend "Prop_Spin" -180 180 } weightlist prop_solid delta autoplay hidden

//Prop Blur2 Spin
$poseparameter "Blur2_Spin" -180 180 wrap
$weightlist prop_blur2 { "Airboat.Propeller_Blur2" 1.0 }
$animation a_blur2_spin0 Prop_Blur2 frame 0 0 subtract neutral 0 weightlist prop_blur2 
$animation a_blur2_spin120 Prop_Blur2 frame 1 1 subtract neutral 0 weightlist prop_blur2   
$animation a_blur2_spin240 Prop_Blur2 frame 2 2 subtract neutral 0 weightlist prop_blur2   
$sequence blur2_spin { a_blur2_spin0 a_blur2_spin120 a_blur2_spin240 a_blur2_spin0 blendwidth 4 blend "Blur2_Spin" -180 180 } weightlist prop_blur2 delta autoplay hidden

//Steering Shock
$weightlist shock { "Airboat.Steer_Shock" 1.0 "Airboat.Steer" 0 }
$animation a_shock_down Steer_Shock frame 0 0 subtract neutral 0 weightlist shock
$animation a_shock_up Steer_Shock frame 1 1 subtract neutral 0 weightlist shock
$sequence shock {  a_shock_down a_shock_up blend "Steer_Shock" -1 1 } weightlist shock delta autoplay hidden 

//Steer
$weightlist steer { "Airboat.Steer" 1.0 "Airboat.gauge" 0 "Airboat.Rudder_L" 1.0 "Airboat.Rudder_R" 1.0 }
$animation a_turn_r Steer_Turn frame 0 0 subtract neutral 0 weightlist steer
$animation a_turn_l Steer_Turn frame 1 1 subtract neutral 0 weightlist steer
$sequence turn {  a_turn_r a_turn_l blend "vehicle_steer" 1 -1 } weightlist steer delta autoplay hidden


//----- Hitbox -----
$hboxset "default"

//								   mins					     maxs
//                          left 	up     	fwd      left  	  up     fwd
$hbox 0 "airboat.hull"	   -40.00    0.00  -72.50    40.00   20.00   72.50
$hbox 0 "airboat.hull"	   -12.50   20.00  -21.00    12.50   65.00   11.00
$hbox 0 "airboat.hull"	   -11.00   20.00   22.50    11.00   37.50   47.50
$hbox 0 "airboat.hull"	   -20.00   20.00  -99.50    20.00   80.00  -24.50

$hboxset "entryboxes"
									
//								   mins					     maxs
//                          left 	up     	fwd      left  	  up     fwd
$hbox 0 "Airboat.Hull"	    25.00   10.00  -104.00    85.00  110.00  104.00		// top left
$hbox 1 "Airboat.Hull"	   -85.00   10.00  -104.00   -25.00  110.00  104.00		// top right
$hbox 2 "Airboat.Hull"	   -37.50   10.00    40.00    37.50  110.00  104.00		// top front
$hbox 3 "Airboat.Hull"	    25.00  -40.00  -104.00    85.00   10.00  104.00		// bottom left
$hbox 4 "Airboat.Hull"	   -85.00  -40.00  -104.00   -25.00   10.00  104.00		// bottom right
$hbox 5 "Airboat.Hull"	   -37.50  -40.00    40.00    37.50   10.00  104.00		// bottom front
$hbox 6 "Airboat.Hull"	   -37.50   10.00 -132.00    37.50  110.00  -88.00		// top rear
$hbox 7 "Airboat.Hull"	   -37.50  -40.00 -132.00    37.50   10.00  -88.00		// bottom rear

//----- Physbox -----
$collisionmodel "airboat_physbox.smd" {
     // Mass in kilograms
     $Mass 500
     $concave
	 $drag 0.3
}


$lod 20
{
	replacemodel "airboat_reference" "airboat_lod_1"
}

$lod 40
{
	replacemodel "airboat_reference" "airboat_lod_2"
}


$lod 90
{
	replacemodel "airboat_reference" "airboat_lod_3"
}

$lod 145
{
	replacemodel "airboat_reference" "airboat_lod_4"
}


$shadowlod
{
	replacemodel "airboat_reference" "airboat_lod_4"
}
