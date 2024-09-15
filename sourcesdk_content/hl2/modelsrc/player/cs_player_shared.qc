//  events on movements use the attachments lfoot and rfoot on the players feet to create water effects as the player walks
//  formatting for this is { event, generic event number, frame number of the animation to play the event on, name of the event to play, which attachment to play the event from

$modelname player/cs_player_shared.mdl
$include "../urban/bones1.qci"
$include "ruleshierarchy.qci"


//====================================================
//
//	LOWER BODY MOVEMENT ANIMATION
//
//====================================================

	//-----------------
	//	Idles
	//-----------------

		$sequence Idle_lower "Idle01" loop FPS 30 activity ACT_IDLE 1
		$sequence Crouch_Idle_Lower "Crouch_idle01" loop FPS 30 activity ACT_CROUCHIDLE 1
		$sequence menu_pose "menu_pose" loop fps 30 origin 0 0 -115 activity ACT_MENUPOSE 1

	//-----------------
	//	Run
	//-----------------

		$animation a_RunS RunS startloop 0 LX LY alignto Idle_lower rotateto -180
		$animation a_RunSE RunSE startloop 0 LX LY alignto Idle_lower rotateto -135
		$animation a_RunE RunE startloop 0 LX LY alignto Idle_lower rotateto -90
		$animation a_RunNE RunNE startloop 0 LX LY alignto Idle_lower rotateto -45
		$animation a_RunN RunN startloop 0 LX LY alignto Idle_lower rotateto 0
		$animation a_RunNW RunNW startloop 0 LX LY alignto Idle_lower rotateto 45
		$animation a_RunW RunW startloop 0 LX LY alignto Idle_lower rotateto 90
		$animation a_RunSW RunSW startloop 0 LX LY alignto Idle_lower rotateto 135
		$animation a_RunZero "9run_idle" loop

/*		$sequence Run_lower {
			a_RunS a_RunSE a_RunE
			a_RunNE a_RunN a_RunNW
			a_RunW a_RunSW a_RunS
			blendwidth 9 blend move_yaw -180 180
			loop 
			ACT_RUN 1
		}
*/
		$sequence Run_lower {
			a_RunNW a_RunN a_RunNE 
			a_RunW a_RunZero a_RunE 
			a_RunSW a_RunS a_RunSE 
			blendwidth 3 blend move_y -1 1 blend move_x 1 -1 loop
			ACT_RUN 1
			{ event 7001 14 "lfoot" }
			{ event 7001 5 "rfoot" }
		}

	
	//-----------------
	//	Walk
	//-----------------

		$animation a_WalkS WalkS startloop 0 LX LY loop alignto Idle_lower rotateto -180
		$animation a_WalkSE WalkSE startloop 0 LX LY loop alignto Idle_lower rotateto -135
		$animation a_WalkE WalkE startloop 0 LX LY loop alignto Idle_lower rotateto -90
		$animation a_WalkNE WalkNE startloop 0 LX LY loop alignto Idle_lower rotateto -45
		$animation a_WalkN WalkN startloop 0 LX LY loop alignto Idle_lower rotateto 0
		$animation a_WalkNW WalkNW startloop 0 LX LY loop alignto Idle_lower rotateto 45
		$animation a_WalkW WalkW startloop 0 LX LY loop alignto Idle_lower rotateto 90
		$animation a_WalkSW WalkSW startloop 0 LX LY loop alignto Idle_lower rotateto 135
		$animation a_walkZero "9walk_idle" loop

/*		$sequence Walk_lower {
			a_WalkS a_WalkSE a_WalkE a_WalkNE a_WalkN a_WalkNW a_WalkW a_WalkSW a_WalkS
			blendwidth 9 blend move_yaw -180 180
			ACT_WALK 1
		}
*/

		$sequence walk_lower {
			a_walkNW a_walkN a_walkNE 
			a_walkW a_walkZero a_walkE 
			a_walkSW a_walkS a_walkSE 
			blendwidth 3 blend move_y -1 1 blend move_x 1 -1 loop
			ACT_WALK 1
			{ event 7002 15 "lfoot" }
			{ event 7002 4 "lfoot" }
		}


	//-----------------------
	//	Crouch_Walk
	//-----------------------

		$animation a_Crouch_walkS Crouch_walkS startloop 0 LX LY alignto Idle_lower rotateto -180
		$animation a_Crouch_walkSE Crouch_walkSE startloop 0 LX LY alignto Idle_lower rotateto -135
		$animation a_Crouch_walkE Crouch_walkE startloop 0 LX LY alignto Idle_lower rotateto -90
		$animation a_Crouch_walkNE Crouch_walkNE startloop 0 LX LY alignto Idle_lower rotateto -45
		$animation a_Crouch_walkN Crouch_walkN startloop 0 LX LY alignto Idle_lower rotateto 0
		$animation a_Crouch_walkNW Crouch_walkNW startloop 0 LX LY alignto Idle_lower rotateto 45
		$animation a_Crouch_walkW Crouch_walkW startloop 0 LX LY alignto Idle_lower rotateto 90
		$animation a_Crouch_walkSW Crouch_walkSW startloop 0 LX LY alignto Idle_lower rotateto 135
		$animation a_Crouch_walkZero "9crouchwalk_idle" loop

/*		$sequence Crouch_Walk_lower {
			a_Crouch_walkS a_Crouch_walkSE a_Crouch_walkE
			a_Crouch_walkNE a_Crouch_walkN a_Crouch_walkNW 
			a_Crouch_walkW a_Crouch_walkSW a_Crouch_walkS
			blendwidth 9 blend move_yaw -180 180
			ACT_RUN_CROUCH 1
		}
*/
		$sequence Crouch_walk_lower {
			a_Crouch_walkNW a_Crouch_walkN a_Crouch_walkNE 
			a_Crouch_walkW a_Crouch_walkZero a_Crouch_walkE 
			a_Crouch_walkSW a_Crouch_walkS a_Crouch_walkSE 
			blendwidth 3 blend move_y -1 1 blend move_x 1 -1 loop
			ACT_RUN_CROUCH 1
			{ event 7002 17 "lfoot" }
			{ event 7002 5 "rfoot" }
		}


	//---------------
	//	jump
	//---------------

		$sequence Jump "jump" fps 30 alignto Idle_lower activity ACT_HOP 1 { event 7001 23 "lfoot" } { event 7001 23 "rfoot" }

//====================================================
//
//		Weapon Specific Animation
//
//====================================================


	//------------------
	//	Temp
	//------------------

		$sequence Reload "Idle_Reload_m4" FPS 30 weightlist upperbody


	//------------------
	//	Pistols
	//------------------

/*		$sequence Crouch_Idle_Aim_Pistol  { 
			Idle_Pistol_aim_up_right Idle_Pistol_aim_up_center Idle_Pistol_aim_up_left 
			Idle_Pistol_aim_mid_right Idle_Pistol_aim_mid_center Idle_Pistol_aim_mid_left 
			Idle_Pistol_aim_down_right Idle_Pistol_aim_down_center Idle_Pistol_aim_down_left 
			weightlist nolowerbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}
*/

		$animation Run_Pistol_aim_neutral Run_9aims_Pistol frame 4 4
		$animation Run_Pistol_aim_up_left Run_9aims_Pistol frame 0 0 subtract Run_Pistol_aim_neutral 0
		$animation Run_Pistol_aim_up_center Run_9aims_Pistol frame 1 1 subtract Run_Pistol_aim_neutral 0
		$animation Run_Pistol_aim_up_right Run_9aims_Pistol frame 2 2 subtract Run_Pistol_aim_neutral 0
		$animation Run_Pistol_aim_mid_left Run_9aims_Pistol frame 3 3 subtract Run_Pistol_aim_neutral 0
		$animation Run_Pistol_aim_mid_center Run_9aims_Pistol frame 4 4 subtract Run_Pistol_aim_neutral 0
		$animation Run_Pistol_aim_mid_right Run_9aims_Pistol frame 5 5 subtract Run_Pistol_aim_neutral 0
		$animation Run_Pistol_aim_down_left Run_9aims_Pistol frame 6 6 subtract Run_Pistol_aim_neutral 0
		$animation Run_Pistol_aim_down_center Run_9aims_Pistol frame 7 7 subtract Run_Pistol_aim_neutral 0
		$animation Run_Pistol_aim_down_right Run_9aims_Pistol frame 8 8 subtract Run_Pistol_aim_neutral 0

		$sequence Run_Aim_Pistol  { 
			Run_Pistol_aim_up_right Run_Pistol_aim_up_center Run_Pistol_aim_up_left 
			Run_Pistol_aim_mid_right Run_Pistol_aim_mid_center Run_Pistol_aim_mid_left 
			Run_Pistol_aim_down_right Run_Pistol_aim_down_center Run_Pistol_aim_down_left 
			weightlist nolowerbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$sequence Idle_Upper_Pistol "Idle_Counter_Pistol" FPS 30 loop weightlist upperbody addlayer Run_Aim_Pistol
		$sequence Walk_Upper_Pistol "Walk_Counter_Pistol" FPS 30 weightlist upperbody addlayer Run_Aim_Pistol
		$sequence Run_Upper_Pistol "Run_Counter_Pistol" FPS 30 loop weightlist upperbody addlayer Run_Aim_Pistol
		$sequence Crouch_Idle_Upper_Pistol "Crouch_Idle_Counter_Pistol" FPS 30 weightlist upperbody addlayer Run_Aim_Pistol
		$sequence Crouch_Walk_Upper_Pistol "Crouch_Walk_Counter_Pistol" FPS 30 weightlist upperbody addlayer Run_Aim_Pistol


		$animation Idle_Shoot_Pistol_layer "Run_Shoot_Pistol" FPS 30 subtract Idle_Shoot_Pistol_layer 0 weightlist upperbody
		$sequence Idle_Shoot_Pistol "Idle_Shoot_Pistol_layer" delta
		$sequence Walk_Shoot_Pistol "Idle_Shoot_Pistol_layer" delta
		$sequence Run_Shoot_Pistol "Idle_Shoot_Pistol_layer" delta
		$sequence Crouch_Idle_Shoot_Pistol "Idle_Shoot_Pistol_layer" delta
		$sequence Crouch_Walk_Shoot_Pistol "Idle_Shoot_Pistol_layer" delta


		$animation Reload_Pistol_layer "Idle_Reload_Pistol" FPS 30 subtract Reload_Pistol_layer 0 weightlist upperbody
		$sequence Reload_Pistol "Reload_Pistol_layer" delta


	//-----------------
	//	Elites
	//-----------------

		$animation Run_Elites_aim_neutral Run_9aims_Elites frame 4 4
		$animation Run_Elites_aim_up_left Run_9aims_Elites frame 0 0 subtract Run_Elites_aim_neutral 0
		$animation Run_Elites_aim_up_center Run_9aims_Elites frame 1 1 subtract Run_Elites_aim_neutral 0
		$animation Run_Elites_aim_up_right Run_9aims_Elites frame 2 2 subtract Run_Elites_aim_neutral 0
		$animation Run_Elites_aim_mid_left Run_9aims_Elites frame 3 3 subtract Run_Elites_aim_neutral 0
		$animation Run_Elites_aim_mid_center Run_9aims_Elites frame 4 4 subtract Run_Elites_aim_neutral 0
		$animation Run_Elites_aim_mid_right Run_9aims_Elites frame 5 5 subtract Run_Elites_aim_neutral 0
		$animation Run_Elites_aim_down_left Run_9aims_Elites frame 6 6 subtract Run_Elites_aim_neutral 0
		$animation Run_Elites_aim_down_center Run_9aims_Elites frame 7 7 subtract Run_Elites_aim_neutral 0
		$animation Run_Elites_aim_down_right Run_9aims_Elites frame 8 8 subtract Run_Elites_aim_neutral 0

		$sequence Run_Aim_Elites  { 
			Run_Elites_aim_up_right Run_Elites_aim_up_center Run_Elites_aim_up_left 
			Run_Elites_aim_mid_right Run_Elites_aim_mid_center Run_Elites_aim_mid_left 
			Run_Elites_aim_down_right Run_Elites_aim_down_center Run_Elites_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}

		$sequence Idle_Upper_Elites "Idle_Counter_Elites" FPS 30 weightlist upperbody addlayer Run_Aim_Elites
		$sequence Walk_Upper_Elites "Walk_Counter_Elites" FPS 30 weightlist upperbody addlayer Run_Aim_Elites
		$sequence Run_Upper_Elites "Run_Counter_Elites" FPS 30 weightlist upperbody addlayer Run_Aim_Elites
		$sequence Crouch_Idle_Upper_Elites "Crouch_Idle_Counter_Elites" FPS 30 weightlist upperbody addlayer Run_Aim_Elites
		$sequence Crouch_Walk_Upper_Elites "Crouch_Walk_Counter_Elites" FPS 30 weightlist upperbody addlayer Run_Aim_Elites

		$animation Idle_Shoot_Elites_L_layer "Run_Shoot_Elites_L" FPS 30 subtract Idle_Shoot_Elites_L_layer 0 weightlist upperbody
		$animation Idle_Shoot_Elites_R_layer "Run_Shoot_Elites_R" FPS 30 subtract Idle_Shoot_Elites_R_layer 0 weightlist upperbody
		$sequence Idle_Shoot_Elites_R "Idle_Shoot_Elites_R_layer" delta
		$sequence Idle_Shoot_Elites_L "Idle_Shoot_Elites_L_layer" delta
		$sequence Walk_Shoot_Elites_R "Idle_Shoot_Elites_R_layer" delta
		$sequence Walk_Shoot_Elites_L "Idle_Shoot_Elites_L_layer" delta
		$sequence Run_Shoot_Elites_R "Idle_Shoot_Elites_R_layer" delta
		$sequence Run_Shoot_Elites_L "Idle_Shoot_Elites_L_layer" delta
		$sequence Crouch_Idle_Shoot_Elites_R "Idle_Shoot_Elites_R_layer" delta
		$sequence Crouch_Idle_Shoot_Elites_L "Idle_Shoot_Elites_L_layer" delta
		$sequence Crouch_Walk_Shoot_Elites_R "Idle_Shoot_Elites_R_layer" delta
		$sequence Crouch_Walk_Shoot_Elites_L "Idle_Shoot_Elites_L_layer" delta

		$animation Reload_Elites_layer "Idle_Reload_Elites" FPS 30 subtract Reload_Elites_layer 0 weightlist upperbody
		$sequence Reload_Elites "Reload_Elites_layer" delta


	//-----------------
	//	M4
	//-----------------

		$animation Crouch_M4_aim_neutral Crouch_9aims_m4 frame 4 4
		$animation Crouch_M4_aim_up_left Crouch_9aims_m4 frame 0 0 subtract Crouch_M4_aim_neutral 0
		$animation Crouch_M4_aim_up_center Crouch_9aims_m4 frame 1 1 subtract Crouch_M4_aim_neutral 0
		$animation Crouch_M4_aim_up_right Crouch_9aims_m4 frame 2 2 subtract Crouch_M4_aim_neutral 0
		$animation Crouch_M4_aim_mid_left Crouch_9aims_m4 frame 3 3 subtract Crouch_M4_aim_neutral 0
		$animation Crouch_M4_aim_mid_center Crouch_9aims_m4 frame 4 4 subtract Crouch_M4_aim_neutral 0
		$animation Crouch_M4_aim_mid_right Crouch_9aims_m4 frame 5 5 subtract Crouch_M4_aim_neutral 0
		$animation Crouch_M4_aim_down_left Crouch_9aims_m4 frame 6 6 subtract Crouch_M4_aim_neutral 0
		$animation Crouch_M4_aim_down_center Crouch_9aims_m4 frame 7 7 subtract Crouch_M4_aim_neutral 0
		$animation Crouch_M4_aim_down_right Crouch_9aims_m4 frame 8 8 subtract Crouch_M4_aim_neutral 0


		$sequence Crouch_Aim_M4  { 
			Crouch_M4_aim_up_right Crouch_M4_aim_up_center Crouch_M4_aim_up_left 
			Crouch_M4_aim_mid_right Crouch_M4_aim_mid_center Crouch_M4_aim_mid_left 
			Crouch_M4_aim_down_right Crouch_M4_aim_down_center Crouch_M4_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Run_M4_aim_neutral Run_9aims_M4 frame 4 4
		$animation Run_M4_aim_up_left Run_9aims_M4 frame 0 0 subtract Run_M4_aim_neutral 0
		$animation Run_M4_aim_up_center Run_9aims_M4 frame 1 1 subtract Run_M4_aim_neutral 0
		$animation Run_M4_aim_up_right Run_9aims_M4 frame 2 2 subtract Run_M4_aim_neutral 0
		$animation Run_M4_aim_mid_left Run_9aims_M4 frame 3 3 subtract Run_M4_aim_neutral 0
		$animation Run_M4_aim_mid_center Run_9aims_M4 frame 4 4 subtract Run_M4_aim_neutral 0
		$animation Run_M4_aim_mid_right Run_9aims_M4 frame 5 5 subtract Run_M4_aim_neutral 0
		$animation Run_M4_aim_down_left Run_9aims_M4 frame 6 6 subtract Run_M4_aim_neutral 0
		$animation Run_M4_aim_down_center Run_9aims_M4 frame 7 7 subtract Run_M4_aim_neutral 0
		$animation Run_M4_aim_down_right Run_9aims_M4 frame 8 8 subtract Run_M4_aim_neutral 0

		$sequence Run_Aim_M4  { 
			Run_M4_aim_up_right Run_M4_aim_up_center Run_M4_aim_up_left 
			Run_M4_aim_mid_right Run_M4_aim_mid_center Run_M4_aim_mid_left 
			Run_M4_aim_down_right Run_M4_aim_down_center Run_M4_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$sequence Idle_Upper_M4 "Idle_Counter_M4" FPS 30 weightlist upperbody addlayer Run_Aim_M4
		$sequence Walk_Upper_M4 "Walk_Counter_M4" FPS 30 weightlist upperbody addlayer Run_Aim_m4
		$sequence Run_Upper_M4 "Run_Counter_M4" FPS 30 startloop 0 weightlist upperbody addlayer Run_Aim_M4
		$sequence Crouch_Idle_Upper_M4 "Crouch_Idle_Counter_M4" FPS 30 weightlist upperbody addlayer Crouch_Aim_m4
		$sequence Crouch_Walk_Upper_M4 "Crouch_Walk_Counter_m4" FPS 30 weightlist upperbody addlayer Crouch_Aim_M4


		$animation Idle_Shoot_M4_layer "Run_shoot_m4" FPS 30 subtract Idle_Shoot_M4_layer 0 weightlist upperbody
		$sequence Idle_Shoot_M4 "Idle_Shoot_M4_layer" delta
		$sequence Walk_Shoot_M4 "Idle_Shoot_M4_layer" delta
		$sequence Run_Shoot_M4 "Idle_Shoot_M4_layer" delta
		$sequence Crouch_Idle_Shoot_M4 "Idle_Shoot_M4_layer" delta
		$sequence Crouch_Walk_Shoot_M4 "Idle_Shoot_M4_layer" delta


		$animation Reload_M4_layer "Idle_Reload_M4" FPS 30 subtract Reload_M4_layer 0 weightlist upperbody
		$sequence Reload_M4 "Reload_M4_layer" delta


	//-----------------
	//	Aug
	//-----------------

		$animation Run_Aug_aim_neutral Run_9aims_Aug frame 4 4
		$animation Run_Aug_aim_up_left Run_9aims_Aug frame 0 0 subtract Run_Aug_aim_neutral 0
		$animation Run_Aug_aim_up_center Run_9aims_Aug frame 1 1 subtract Run_Aug_aim_neutral 0
		$animation Run_Aug_aim_up_right Run_9aims_Aug frame 2 2 subtract Run_Aug_aim_neutral 0
		$animation Run_Aug_aim_mid_left Run_9aims_Aug frame 3 3 subtract Run_Aug_aim_neutral 0
		$animation Run_Aug_aim_mid_center Run_9aims_Aug frame 4 4 subtract Run_Aug_aim_neutral 0
		$animation Run_Aug_aim_mid_right Run_9aims_Aug frame 5 5 subtract Run_Aug_aim_neutral 0
		$animation Run_Aug_aim_down_left Run_9aims_Aug frame 6 6 subtract Run_Aug_aim_neutral 0
		$animation Run_Aug_aim_down_center Run_9aims_Aug frame 7 7 subtract Run_Aug_aim_neutral 0
		$animation Run_Aug_aim_down_right Run_9aims_Aug frame 8 8 subtract Run_Aug_aim_neutral 0

		$sequence Run_Aim_Aug  { 
			Run_Aug_aim_up_right Run_Aug_aim_up_center Run_Aug_aim_up_left 
			Run_Aug_aim_mid_right Run_Aug_aim_mid_center Run_Aug_aim_mid_left 
			Run_Aug_aim_down_right Run_Aug_aim_down_center Run_Aug_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}

		$sequence Idle_Upper_Aug "Idle_Counter_Aug" FPS 30 weightlist upperbody addlayer Run_Aim_Aug
		$sequence Walk_Upper_Aug "Walk_Counter_Aug" FPS 30 weightlist upperbody addlayer Run_Aim_Aug
		$sequence Run_Upper_Aug "Run_Counter_Aug" FPS 30 weightlist upperbody addlayer Run_Aim_Aug
		$sequence Crouch_Idle_Upper_Aug "Crouch_Idle_Counter_Aug" FPS 30 weightlist upperbody addlayer Run_Aim_Aug
		$sequence Crouch_Walk_Upper_Aug "Crouch_Walk_Counter_Aug" FPS 30 weightlist upperbody addlayer Run_Aim_Aug

		$sequence Idle_Shoot_Aug "Idle_Shoot_M4_layer" delta
		$sequence Walk_Shoot_Aug "Idle_Shoot_M4_layer" delta
		$sequence Run_Shoot_Aug "Idle_Shoot_M4_layer" delta
		$sequence Crouch_Idle_Shoot_Aug "Idle_Shoot_M4_layer" delta
		$sequence Crouch_Walk_Shoot_Aug "Idle_Shoot_M4_layer" delta

		$animation Reload_Bullpup_Layer "idle_reload_famas" FPS 30 subtract Reload_Bullpup_Layer 0 Weightlist upperbody
		$sequence Reload_Aug "Reload_Bullpup_Layer" delta


	//-----------------
	//	FAMAS
	//-----------------

		$animation Run_Famas_aim_neutral Run_9aims_Famas frame 4 4
		$animation Run_Famas_aim_up_left Run_9aims_Famas frame 0 0 subtract Run_Famas_aim_neutral 0
		$animation Run_Famas_aim_up_center Run_9aims_Famas frame 1 1 subtract Run_Famas_aim_neutral 0
		$animation Run_Famas_aim_up_right Run_9aims_Famas frame 2 2 subtract Run_Famas_aim_neutral 0
		$animation Run_Famas_aim_mid_left Run_9aims_Famas frame 3 3 subtract Run_Famas_aim_neutral 0
		$animation Run_Famas_aim_mid_center Run_9aims_Famas frame 4 4 subtract Run_Famas_aim_neutral 0
		$animation Run_Famas_aim_mid_right Run_9aims_Famas frame 5 5 subtract Run_Famas_aim_neutral 0
		$animation Run_Famas_aim_down_left Run_9aims_Famas frame 6 6 subtract Run_Famas_aim_neutral 0
		$animation Run_Famas_aim_down_center Run_9aims_Famas frame 7 7 subtract Run_Famas_aim_neutral 0
		$animation Run_Famas_aim_down_right Run_9aims_Famas frame 8 8 subtract Run_Famas_aim_neutral 0

		$sequence Run_Aim_famas  { 
			Run_Famas_aim_up_right Run_Famas_aim_up_center Run_Famas_aim_up_left 
			Run_Famas_aim_mid_right Run_Famas_aim_mid_center Run_Famas_aim_mid_left 
			Run_Famas_aim_down_right Run_Famas_aim_down_center Run_Famas_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}

		$sequence Idle_Upper_famas "Idle_Counter_famas" FPS 30 weightlist upperbody addlayer Run_Aim_famas
		$sequence Walk_Upper_famas "Walk_Counter_famas" FPS 30 weightlist upperbody addlayer Run_Aim_famas
		$sequence Run_Upper_famas "Run_Counter_famas" FPS 30 weightlist upperbody addlayer Run_Aim_famas
		$sequence Crouch_Idle_Upper_famas "Crouch_Idle_Counter_famas" FPS 30 weightlist upperbody addlayer Run_Aim_famas
		$sequence Crouch_Walk_Upper_famas "Crouch_Walk_Counter_famas" FPS 30 weightlist upperbody addlayer Run_Aim_famas

		$sequence Idle_Shoot_famas "Idle_Shoot_M4_layer" delta
		$sequence Walk_Shoot_famas "Idle_Shoot_M4_layer" delta
		$sequence Run_Shoot_famas "Idle_Shoot_M4_layer" delta
		$sequence Crouch_Idle_Shoot_famas "Idle_Shoot_M4_layer" delta
		$sequence Crouch_Walk_Shoot_famas "Idle_Shoot_M4_layer" delta

		$sequence Reload_Famas "Reload_Bullpup_Layer" delta


	//-----------------
	//	P90
	//-----------------

		$animation Run_P90_aim_neutral Run_9aims_P90 frame 4 4
		$animation Run_P90_aim_up_left Run_9aims_P90 frame 0 0 subtract Run_P90_aim_neutral 0
		$animation Run_P90_aim_up_center Run_9aims_P90 frame 1 1 subtract Run_P90_aim_neutral 0
		$animation Run_P90_aim_up_right Run_9aims_P90 frame 2 2 subtract Run_P90_aim_neutral 0
		$animation Run_P90_aim_mid_left Run_9aims_P90 frame 3 3 subtract Run_P90_aim_neutral 0
		$animation Run_P90_aim_mid_center Run_9aims_P90 frame 4 4 subtract Run_P90_aim_neutral 0
		$animation Run_P90_aim_mid_right Run_9aims_P90 frame 5 5 subtract Run_P90_aim_neutral 0
		$animation Run_P90_aim_down_left Run_9aims_P90 frame 6 6 subtract Run_P90_aim_neutral 0
		$animation Run_P90_aim_down_center Run_9aims_P90 frame 7 7 subtract Run_P90_aim_neutral 0
		$animation Run_P90_aim_down_right Run_9aims_P90 frame 8 8 subtract Run_P90_aim_neutral 0

		$sequence Run_Aim_p90  { 
			Run_P90_aim_up_right Run_P90_aim_up_center Run_P90_aim_up_left 
			Run_P90_aim_mid_right Run_P90_aim_mid_center Run_P90_aim_mid_left 
			Run_P90_aim_down_right Run_P90_aim_down_center Run_P90_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}

		$sequence Idle_Upper_p90 "Idle_Counter_p90" FPS 30 weightlist upperbody addlayer Run_Aim_P90
		$sequence Walk_Upper_p90 "Walk_Counter_p90" FPS 30 weightlist upperbody addlayer Run_Aim_P90
		$sequence Run_Upper_p90 "Run_Counter_p90" FPS 30 weightlist upperbody addlayer Run_Aim_P90
		$sequence Crouch_Idle_Upper_p90 "Crouch_Idle_Counter_p90" FPS 30 weightlist upperbody addlayer Run_Aim_P90
		$sequence Crouch_Walk_Upper_p90 "Crouch_Walk_Counter_p90" FPS 30 weightlist upperbody addlayer Run_Aim_P90

		$sequence Idle_Shoot_p90 "Idle_Shoot_M4_layer" delta
		$sequence Walk_Shoot_p90 "Idle_Shoot_M4_layer" delta
		$sequence Run_Shoot_p90 "Idle_Shoot_M4_layer" delta
		$sequence Crouch_Idle_Shoot_p90 "Idle_Shoot_M4_layer" delta
		$sequence Crouch_Walk_Shoot_p90 "Idle_Shoot_M4_layer" delta
	
		$animation Reload_P90_layer "Idle_Reload_P90" FPS 30 subtract Reload_P90_layer 0 weightlist upperbody
		$sequence Reload_P90 "Reload_P90_layer" delta


	//-----------------
	//	G3-SG1
	//-----------------

		$sequence Idle_Upper_G3 "Idle_Counter_G3" FPS 30 weightlist upperbody addlayer Run_Aim_m4
		$sequence Walk_Upper_G3 "Walk_Counter_G3" FPS 30 weightlist upperbody addlayer Run_Aim_m4
		$sequence Run_Upper_G3 "Run_Counter_G3" FPS 30 weightlist upperbody addlayer Run_Aim_m4
		$sequence Crouch_Idle_Upper_G3 "Crouch_Idle_Counter_G3" FPS 30 weightlist upperbody addlayer Run_Aim_m4
		$sequence Crouch_Walk_Upper_G3 "Crouch_Idle_Counter_G3" FPS 30 weightlist upperbody addlayer Run_Aim_m4

		$sequence Idle_Shoot_G3 "Idle_Shoot_M4_layer" delta
		$sequence Walk_Shoot_G3 "Idle_Shoot_M4_layer" delta
		$sequence Run_Shoot_G3 "Idle_Shoot_M4_layer" delta
		$sequence Crouch_Idle_Shoot_G3 "Idle_Shoot_M4_layer" delta
		$sequence Crouch_Walk_Shoot_G3 "Idle_Shoot_M4_layer" delta

		$sequence Reload_G3 "Reload_M4_layer" delta


	//-----------------
	//	Galil
	//-----------------

		$sequence Idle_Upper_Galil "Idle_Counter_Galil" FPS 30 weightlist upperbody addlayer Run_Aim_m4
		$sequence Walk_Upper_Galil "Walk_Counter_Galil" FPS 30 weightlist upperbody addlayer Run_Aim_m4
		$sequence Run_Upper_Galil "Run_Counter_Galil" FPS 30 weightlist upperbody addlayer Run_Aim_m4
		$sequence Crouch_Idle_Upper_Galil "Crouch_Idle_Counter_Galil" FPS 30 weightlist upperbody addlayer Run_Aim_m4
		$sequence Crouch_Walk_Upper_Galil "Crouch_Walk_Counter_Galil" FPS 30 weightlist upperbody addlayer Run_Aim_m4

		$sequence Idle_Shoot_Galil "Idle_Shoot_M4_layer" delta
		$sequence Walk_Shoot_Galil "Idle_Shoot_M4_layer" delta
		$sequence Run_Shoot_Galil "Idle_Shoot_M4_layer" delta
		$sequence Crouch_Idle_Shoot_Galil "Idle_Shoot_M4_layer" delta
		$sequence Crouch_Walk_Shoot_Galil "Idle_Shoot_M4_layer" delta

		$sequence Reload_Galil "Reload_M4_layer" delta


	//-----------------
	//	MP5
	//-----------------

		$animation Run_MP5_aim_neutral Run_9aims_MP5 frame 4 4
		$animation Run_MP5_aim_up_left Run_9aims_MP5 frame 0 0 subtract Run_MP5_aim_neutral 0
		$animation Run_MP5_aim_up_center Run_9aims_MP5 frame 1 1 subtract Run_MP5_aim_neutral 0
		$animation Run_MP5_aim_up_right Run_9aims_MP5 frame 2 2 subtract Run_MP5_aim_neutral 0
		$animation Run_MP5_aim_mid_left Run_9aims_MP5 frame 3 3 subtract Run_MP5_aim_neutral 0
		$animation Run_MP5_aim_mid_center Run_9aims_MP5 frame 4 4 subtract Run_MP5_aim_neutral 0
		$animation Run_MP5_aim_mid_right Run_9aims_MP5 frame 5 5 subtract Run_MP5_aim_neutral 0
		$animation Run_MP5_aim_down_left Run_9aims_MP5 frame 6 6 subtract Run_MP5_aim_neutral 0
		$animation Run_MP5_aim_down_center Run_9aims_MP5 frame 7 7 subtract Run_MP5_aim_neutral 0
		$animation Run_MP5_aim_down_right Run_9aims_MP5 frame 8 8 subtract Run_MP5_aim_neutral 0

		$sequence Run_Aim_MP5  { 
			Run_MP5_aim_up_right Run_MP5_aim_up_center Run_MP5_aim_up_left 
			Run_MP5_aim_mid_right Run_MP5_aim_mid_center Run_MP5_aim_mid_left 
			Run_MP5_aim_down_right Run_MP5_aim_down_center Run_MP5_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}

		$sequence Idle_Upper_MP5 "Idle_Counter_MP5" FPS 30 weightlist upperbody addlayer Run_Aim_MP5
		$sequence Walk_Upper_MP5 "Walk_Counter_MP5" FPS 30 weightlist upperbody addlayer Run_Aim_MP5
		$sequence Run_Upper_MP5 "Run_Counter_MP5" FPS 30 weightlist upperbody addlayer Run_Aim_MP5
		$sequence Crouch_Idle_Upper_MP5 "Crouch_Idle_Counter_MP5" FPS 30 weightlist upperbody addlayer Run_Aim_MP5
		$sequence Crouch_Walk_Upper_MP5 "Crouch_Walk_Counter_MP5" FPS 30 weightlist upperbody addlayer Run_Aim_MP5

		$sequence Idle_Shoot_MP5 "Idle_Shoot_M4_layer" delta
		$sequence Walk_Shoot_MP5 "Idle_Shoot_M4_layer" delta
		$sequence Run_Shoot_MP5 "Idle_Shoot_M4_layer" delta
		$sequence Crouch_Idle_Shoot_MP5 "Idle_Shoot_M4_layer" delta
		$sequence Crouch_Walk_Shoot_MP5 "Idle_Shoot_M4_layer" delta
	
		$sequence Reload_MP5 "Reload_M4_layer" delta


	//-----------------
	//	SG550
	//-----------------

		$sequence Idle_Upper_SG550 "Idle_Counter_SG550" FPS 30 weightlist upperbody addlayer Run_Aim_m4
		$sequence Walk_Upper_SG550 "Walk_Counter_SG550" FPS 30 weightlist upperbody addlayer Run_Aim_m4
		$sequence Run_Upper_SG550 "Run_Counter_SG550" FPS 30 weightlist upperbody addlayer Run_Aim_m4
		$sequence Crouch_Idle_Upper_SG550 "Crouch_Idle_Counter_SG550" FPS 30 weightlist upperbody addlayer Run_Aim_m4
		$sequence Crouch_Walk_Upper_SG550 "Crouch_Walk_Counter_SG550" FPS 30 weightlist upperbody addlayer Run_Aim_m4

		$sequence Idle_Shoot_SG550 "Idle_Shoot_M4_layer" delta
		$sequence Walk_Shoot_SG550 "Idle_Shoot_M4_layer" delta
		$sequence Run_Shoot_SG550 "Idle_Shoot_M4_layer" delta
		$sequence Crouch_Idle_Shoot_SG550 "Idle_Shoot_M4_layer" delta
		$sequence Crouch_Walk_Shoot_SG550 "Idle_Shoot_M4_layer" delta

		$sequence Reload_sg550 "Reload_M4_layer" delta


	//-----------------
	//	SG552
	//-----------------

		$sequence Idle_Upper_SG552 "Idle_Counter_SG552" FPS 30 weightlist upperbody addlayer Run_Aim_m4
		$sequence Walk_Upper_SG552 "Walk_Counter_SG552" FPS 30 weightlist upperbody addlayer Run_Aim_m4
		$sequence Run_Upper_SG552 "Run_Counter_SG552" FPS 30 weightlist upperbody addlayer Run_Aim_m4
		$sequence Crouch_Idle_Upper_SG552 "Crouch_Idle_Counter_SG552" FPS 30 weightlist upperbody addlayer Run_Aim_m4
		$sequence Crouch_Walk_Upper_SG552 "Crouch_Walk_Counter_SG552" FPS 30 weightlist upperbody addlayer Run_Aim_m4

		$sequence Idle_Shoot_SG552 "Idle_Shoot_M4_layer" delta
		$sequence Walk_Shoot_SG552 "Idle_Shoot_M4_layer" delta
		$sequence Run_Shoot_SG552 "Idle_Shoot_M4_layer" delta
		$sequence Crouch_Idle_Shoot_SG552 "Idle_Shoot_M4_layer" delta
		$sequence Crouch_Walk_Shoot_SG552 "Idle_Shoot_M4_layer" delta

		$sequence Reload_sg552 "Reload_M4_layer" delta


	//-----------------
	//	UMP45
	//-----------------

		$sequence Idle_Upper_UMP45 "Idle_Counter_UMP45" FPS 30 weightlist upperbody addlayer Run_Aim_AUG
		$sequence Walk_Upper_UMP45 "Walk_Counter_UMP45" FPS 30 weightlist upperbody addlayer Run_Aim_AUG
		$sequence Run_Upper_UMP45 "Run_Counter_UMP45" FPS 30 weightlist upperbody addlayer Run_Aim_AUG
		$sequence Crouch_Idle_Upper_UMP45 "Crouch_Idle_Counter_UMP45" FPS 30 weightlist upperbody addlayer Run_Aim_AUG
		$sequence Crouch_Walk_Upper_UMP45 "Crouch_Walk_Counter_UMP45" FPS 30 weightlist upperbody addlayer Run_Aim_AUG

		$sequence Idle_Shoot_UMP45 "Idle_Shoot_M4_layer" delta
		$sequence Walk_Shoot_UMP45 "Idle_Shoot_M4_layer" delta
		$sequence Run_Shoot_UMP45 "Idle_Shoot_M4_layer" delta
		$sequence Crouch_Idle_Shoot_UMP45 "Idle_Shoot_M4_layer" delta
		$sequence Crouch_Walk_Shoot_UMP45 "Idle_Shoot_M4_layer" delta

		$sequence Reload_UMP45 "Reload_M4_layer" delta

	//-----------------
	//	AWP
	//-----------------

		$animation Run_AWP_aim_neutral Run_9aims_AWP frame 4 4
		$animation Run_AWP_aim_up_left Run_9aims_AWP frame 0 0 subtract Run_AWP_aim_neutral 0
		$animation Run_AWP_aim_up_center Run_9aims_AWP frame 1 1 subtract Run_AWP_aim_neutral 0
		$animation Run_AWP_aim_up_right Run_9aims_AWP frame 2 2 subtract Run_AWP_aim_neutral 0
		$animation Run_AWP_aim_mid_left Run_9aims_AWP frame 3 3 subtract Run_AWP_aim_neutral 0
		$animation Run_AWP_aim_mid_center Run_9aims_AWP frame 4 4 subtract Run_AWP_aim_neutral 0
		$animation Run_AWP_aim_mid_right Run_9aims_AWP frame 5 5 subtract Run_AWP_aim_neutral 0
		$animation Run_AWP_aim_down_left Run_9aims_AWP frame 6 6 subtract Run_AWP_aim_neutral 0
		$animation Run_AWP_aim_down_center Run_9aims_AWP frame 7 7 subtract Run_AWP_aim_neutral 0
		$animation Run_AWP_aim_down_right Run_9aims_AWP frame 8 8 subtract Run_AWP_aim_neutral 0

		$sequence Run_Aim_AWP  { 
			Run_AWP_aim_up_right Run_AWP_aim_up_center Run_AWP_aim_up_left 
			Run_AWP_aim_mid_right Run_AWP_aim_mid_center Run_AWP_aim_mid_left 
			Run_AWP_aim_down_right Run_AWP_aim_down_center Run_AWP_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}

		$sequence Idle_Upper_AWP "Idle_Counter_AWP" FPS 30 weightlist upperbody addlayer Run_Aim_AWP
		$sequence Walk_Upper_AWP "Walk_Counter_AWP" FPS 30 weightlist upperbody addlayer Run_Aim_AWP
		$sequence Run_Upper_AWP "Run_Counter_AWP" FPS 30 weightlist upperbody addlayer Run_Aim_AWP
		$sequence Crouch_Idle_Upper_AWP "Crouch_Idle_Counter_AWP" FPS 30 weightlist upperbody addlayer Run_Aim_AWP
		$sequence Crouch_Walk_Upper_AWP "Crouch_Walk_Counter_AWP" FPS 30 weightlist upperbody addlayer Run_Aim_AWP

		$sequence Idle_Shoot_AWP "Idle_Shoot_M4_layer" delta
		$sequence Walk_Shoot_AWP "Idle_Shoot_M4_layer" delta
		$sequence Run_Shoot_AWP "Idle_Shoot_M4_layer" delta
		$sequence Crouch_Idle_Shoot_AWP "Idle_Shoot_M4_layer" delta
		$sequence Crouch_Walk_Shoot_AWP "Idle_Shoot_M4_layer" delta

		$animation Reload_AWP_layer "Idle_Reload_Scout" FPS 21 subtract Reload_AWP_layer 0 weightlist upperbody
		$sequence Reload_AWP "Reload_AWP_layer" delta


	//-----------------
	//	Scout
	//-----------------

		$sequence Idle_Upper_Scout "Idle_Counter_Scout" FPS 30 weightlist upperbody addlayer Run_Aim_AWP
		$sequence Walk_Upper_Scout "Walk_Counter_Scout" FPS 30 weightlist upperbody addlayer Run_Aim_AWP
		$sequence Run_Upper_Scout "Run_Counter_Scout" FPS 30 weightlist upperbody addlayer Run_Aim_AWP
		$sequence Crouch_Idle_Upper_Scout "Crouch_Idle_Counter_Scout" FPS 30 weightlist upperbody addlayer Run_Aim_AWP
		$sequence Crouch_Walk_Upper_Scout "Crouch_Walk_Counter_Scout" FPS 30 weightlist upperbody addlayer Run_Aim_AWP

		$sequence Idle_Shoot_Scout "Idle_Shoot_M4_layer" delta
		$sequence Walk_Shoot_Scout "Idle_Shoot_M4_layer" delta
		$sequence Run_Shoot_Scout "Idle_Shoot_M4_layer" delta
		$sequence Crouch_Idle_Shoot_Scout "Idle_Shoot_M4_layer" delta
		$sequence Crouch_Walk_Shoot_Scout "Idle_Shoot_M4_layer" delta

		$animation Reload_Scout_layer "Idle_Reload_Scout" FPS 30 subtract Reload_Scout_layer 0 weightlist upperbody
		$sequence Reload_Scout "Reload_Scout_layer" delta


	//-----------------
	//	M3S90
	//-----------------

		$sequence Idle_Upper_M3S90 "Idle_Counter_M3S90" FPS 30 weightlist upperbody addlayer Run_Aim_m4
		$sequence Walk_Upper_M3S90 "Walk_Counter_M3S90" FPS 30 weightlist upperbody addlayer Run_Aim_m4
		$sequence Run_Upper_M3S90 "Run_Counter_M3S90" FPS 30 weightlist upperbody addlayer Run_Aim_m4
		$sequence Crouch_Idle_Upper_M3S90 "Crouch_Idle_Counter_M3S90" FPS 30 weightlist upperbody addlayer Run_Aim_m4
		$sequence Crouch_Walk_Upper_M3S90 "Crouch_Walk_Counter_M3S90" FPS 30 weightlist upperbody addlayer Run_Aim_m4

		$sequence Idle_Shoot_M3S90 "Idle_Shoot_M4_layer" delta
		$sequence Walk_Shoot_M3S90 "Idle_Shoot_M4_layer" delta
		$sequence Run_Shoot_M3S90 "Idle_Shoot_M4_layer" delta
		$sequence Crouch_Idle_Shoot_M3S90 "Idle_Shoot_M4_layer" delta
		$sequence Crouch_Walk_Shoot_M3S90 "Idle_Shoot_M4_layer" delta

//		$animation Reload_m3s90_layer1 "Idle_Reload_shotgun" frames 0 15 FPS 30 subtract Reload_m3s90_layer1 0 weightlist upperbody
		$animation Reload_M3S90_layer2 "Idle_Reload_shotgun" frames 16 45 FPS 30 subtract Idle_Upper_M3S90 0 weightlist upperbody
//		$animation Reload_m3s90_layer3 "Idle_Reload_shotgun" frames 46 80 FPS 30 subtract Reload_m3s90_layer3 0 weightlist upperbody

//		$sequence Reload1_m3s90_1 "Reload_m3s90_layer1" delta
		$sequence Reload1_m3s90 "Reload_m3s90_layer2" delta
//		$sequence Reload1_m3s90_3 "Reload_m3s90_layer3" delta


	//-----------------
	//	xm1014
	//-----------------

		$sequence Idle_Upper_xm1014 "Idle_Counter_xm1014" FPS 30 weightlist upperbody addlayer Run_Aim_m4
		$sequence Walk_Upper_xm1014 "Walk_Counter_xm1014" FPS 30 weightlist upperbody addlayer Run_Aim_m4
		$sequence Run_Upper_xm1014 "Run_Counter_xm1014" FPS 30 weightlist upperbody addlayer Run_Aim_m4
		$sequence Crouch_Idle_Upper_xm1014 "Crouch_Idle_Counter_xm1014" FPS 30 weightlist upperbody addlayer Run_Aim_m4
		$sequence Crouch_Walk_Upper_xm1014 "Crouch_Walk_Counter_xm1014" FPS 30 weightlist upperbody addlayer Run_Aim_m4

		$sequence Idle_Shoot_xm1014 "Idle_Shoot_M4_layer" delta
		$sequence Walk_Shoot_xm1014 "Idle_Shoot_M4_layer" delta
		$sequence Run_Shoot_xm1014 "Idle_Shoot_M4_layer" delta
		$sequence Crouch_Idle_Shoot_xm1014 "Idle_Shoot_M4_layer" delta
		$sequence Crouch_Walk_Shoot_xm1014 "Idle_Shoot_M4_layer" delta

		$sequence Reload1_XM1014 "Reload_m3s90_layer2" delta


	//-----------------
	//	MAC10
	//-----------------

		$animation Run_MAC10_aim_neutral Run_9aims_MAC10 frame 4 4
		$animation Run_MAC10_aim_up_left Run_9aims_MAC10 frame 0 0 subtract Run_MAC10_aim_neutral 0
		$animation Run_MAC10_aim_up_center Run_9aims_MAC10 frame 1 1 subtract Run_MAC10_aim_neutral 0
		$animation Run_MAC10_aim_up_right Run_9aims_MAC10 frame 2 2 subtract Run_MAC10_aim_neutral 0
		$animation Run_MAC10_aim_mid_left Run_9aims_MAC10 frame 3 3 subtract Run_MAC10_aim_neutral 0
		$animation Run_MAC10_aim_mid_center Run_9aims_MAC10 frame 4 4 subtract Run_MAC10_aim_neutral 0
		$animation Run_MAC10_aim_mid_right Run_9aims_MAC10 frame 5 5 subtract Run_MAC10_aim_neutral 0
		$animation Run_MAC10_aim_down_left Run_9aims_MAC10 frame 6 6 subtract Run_MAC10_aim_neutral 0
		$animation Run_MAC10_aim_down_center Run_9aims_MAC10 frame 7 7 subtract Run_MAC10_aim_neutral 0
		$animation Run_MAC10_aim_down_right Run_9aims_MAC10 frame 8 8 subtract Run_MAC10_aim_neutral 0

		$sequence Run_Aim_MAC10  { 
			Run_MAC10_aim_up_right Run_MAC10_aim_up_center Run_MAC10_aim_up_left 
			Run_MAC10_aim_mid_right Run_MAC10_aim_mid_center Run_MAC10_aim_mid_left 
			Run_MAC10_aim_down_right Run_MAC10_aim_down_center Run_MAC10_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}

		$sequence Idle_Upper_MAC10 "Idle_Counter_MAC10" FPS 30 weightlist upperbody addlayer Run_Aim_MAC10
		$sequence Walk_Upper_MAC10 "Walk_Counter_MAC10" FPS 30 weightlist upperbody addlayer Run_Aim_MAC10
		$sequence Run_Upper_MAC10 "Run_Counter_MAC10" FPS 30 weightlist upperbody addlayer Run_Aim_MAC10
		$sequence Crouch_Idle_Upper_MAC10 "Crouch_Idle_Counter_MAC10" FPS 30 weightlist upperbody addlayer Run_Aim_MAC10
		$sequence Crouch_Walk_Upper_MAC10 "Crouch_Walk_Counter_MAC10" FPS 30 weightlist upperbody addlayer Run_Aim_MAC10

		$sequence Idle_Shoot_MAC10 "Idle_Shoot_M4_layer" delta
		$sequence Walk_Shoot_MAC10 "Idle_Shoot_M4_layer" delta
		$sequence Run_Shoot_MAC10 "Idle_Shoot_M4_layer" delta
		$sequence Crouch_Idle_Shoot_MAC10 "Idle_Shoot_M4_layer" delta
		$sequence Crouch_Walk_Shoot_MAC10 "Idle_Shoot_M4_layer" delta

		$animation Reload_TMP_layer "Idle_Reload_TMP" FPS 30 subtract Reload_TMP_layer 0 weightlist upperbody
		$sequence Reload_MAC10 "Reload_TMP_layer" delta


	//-----------------
	//	TMP
	//-----------------

		$sequence Idle_Upper_TMP "Idle_Counter_TMP" FPS 30 weightlist upperbody addlayer Run_Aim_MAC10
		$sequence Walk_Upper_TMP "Walk_Counter_TMP" FPS 30 weightlist upperbody addlayer Run_Aim_MAC10
		$sequence Run_Upper_TMP "Run_Counter_TMP" FPS 30 weightlist upperbody addlayer Run_Aim_MAC10
		$sequence Crouch_Idle_Upper_TMP "Crouch_Idle_Counter_TMP" FPS 30 weightlist upperbody addlayer Run_Aim_MAC10
		$sequence Crouch_Walk_Upper_TMP "Walk_Counter_TMP" FPS 30 weightlist upperbody addlayer Run_Aim_MAC10

		$sequence Idle_Shoot_TMP "Idle_Shoot_M4_layer" delta
		$sequence Walk_Shoot_TMP "Idle_Shoot_M4_layer" delta
		$sequence Run_Shoot_TMP "Idle_Shoot_M4_layer" delta
		$sequence Crouch_Idle_Shoot_TMP "Idle_Shoot_M4_layer" delta
		$sequence Crouch_Walk_Shoot_TMP "Idle_Shoot_M4_layer" delta

		$sequence Reload_TMP "Reload_TMP_layer" delta


	//-----------------
	//	M249
	//-----------------

		$animation Run_M249_aim_neutral Run_9aims_M249 frame 4 4
		$animation Run_M249_aim_up_left Run_9aims_M249 frame 0 0 subtract Run_M249_aim_neutral 0
		$animation Run_M249_aim_up_center Run_9aims_M249 frame 1 1 subtract Run_M249_aim_neutral 0
		$animation Run_M249_aim_up_right Run_9aims_M249 frame 2 2 subtract Run_M249_aim_neutral 0
		$animation Run_M249_aim_mid_left Run_9aims_M249 frame 3 3 subtract Run_M249_aim_neutral 0
		$animation Run_M249_aim_mid_center Run_9aims_M249 frame 4 4 subtract Run_M249_aim_neutral 0
		$animation Run_M249_aim_mid_right Run_9aims_M249 frame 5 5 subtract Run_M249_aim_neutral 0
		$animation Run_M249_aim_down_left Run_9aims_M249 frame 6 6 subtract Run_M249_aim_neutral 0
		$animation Run_M249_aim_down_center Run_9aims_M249 frame 7 7 subtract Run_M249_aim_neutral 0
		$animation Run_M249_aim_down_right Run_9aims_M249 frame 8 8 subtract Run_M249_aim_neutral 0

		$sequence Run_Aim_M249  { 
			Run_M249_aim_up_right Run_M249_aim_up_center Run_M249_aim_up_left 
			Run_M249_aim_mid_right Run_M249_aim_mid_center Run_M249_aim_mid_left 
			Run_M249_aim_down_right Run_M249_aim_down_center Run_M249_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}

		$sequence Idle_Upper_M249 "Idle_Counter_M249" FPS 30 weightlist upperbody addlayer Run_Aim_M249
		$sequence Walk_Upper_M249 "Walk_Counter_M249" FPS 30 weightlist upperbody addlayer Run_Aim_M249
		$sequence Run_Upper_M249 "Run_Counter_M249" FPS 30 weightlist upperbody addlayer Run_Aim_M249
		$sequence Crouch_Idle_Upper_M249 "Crouch_Idle_Counter_M249" FPS 30 weightlist upperbody addlayer Run_Aim_M249
		$sequence Crouch_Walk_Upper_M249 "Walk_Counter_M249" FPS 30 weightlist upperbody addlayer Run_Aim_M249

		$sequence Idle_Shoot_M249 "Idle_Shoot_M4_layer" delta
		$sequence Walk_Shoot_M249 "Idle_Shoot_M4_layer" delta
		$sequence Run_Shoot_M249 "Idle_Shoot_M4_layer" delta
		$sequence Crouch_Idle_Shoot_M249 "Idle_Shoot_M4_layer" delta
		$sequence Crouch_Walk_Shoot_M249 "Idle_Shoot_M4_layer" delta

		$animation Reload_M249_layer "Idle_Reload_M249" FPS 30 subtract Reload_M249_layer 0 weightlist upperbody
		$sequence Reload_M249 "Reload_M249_layer" delta


	//-----------------
	//    Grenades
	//-----------------

		$animation Idle_Gren_aim_neutral Idle_9aims_gren frame 4 4
		$animation Idle_Gren_aim_up_left Idle_9aims_gren frame 0 0 subtract Idle_Gren_aim_neutral 0
		$animation Idle_Gren_aim_up_center Idle_9aims_gren frame 1 1 subtract Idle_Gren_aim_neutral 0
		$animation Idle_Gren_aim_up_right Idle_9aims_gren frame 2 2 subtract Idle_Gren_aim_neutral 0
		$animation Idle_Gren_aim_mid_left Idle_9aims_gren frame 3 3 subtract Idle_Gren_aim_neutral 0
		$animation Idle_Gren_aim_mid_center Idle_9aims_gren frame 4 4 subtract Idle_Gren_aim_neutral 0
		$animation Idle_Gren_aim_mid_right Idle_9aims_gren frame 5 5 subtract Idle_Gren_aim_neutral 0
		$animation Idle_Gren_aim_down_left Idle_9aims_gren frame 6 6 subtract Idle_Gren_aim_neutral 0
		$animation Idle_Gren_aim_down_center Idle_9aims_gren frame 7 7 subtract Idle_Gren_aim_neutral 0
		$animation Idle_Gren_aim_down_right Idle_9aims_gren frame 8 8 subtract Idle_Gren_aim_neutral 0


		$sequence Idle_Aim_Gren  { 
			Idle_Gren_aim_up_right Idle_Gren_aim_up_center Idle_Gren_aim_up_left 
			Idle_Gren_aim_mid_right Idle_Gren_aim_mid_center Idle_Gren_aim_mid_left 
			Idle_Gren_aim_down_right Idle_Gren_aim_down_center Idle_Gren_aim_down_left 
			weightlist nolowerbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}

		$sequence Idle_Upper_gren "Idle_Counter_gren" FPS 30 weightlist upperbody addlayer Idle_Aim_Gren
		$sequence Run_Upper_gren "Run_Counter_gren" FPS 30 weightlist upperbody addlayer Idle_Aim_Gren
		$sequence Walk_Upper_gren "Walk_Counter_gren" FPS 30 weightlist upperbody addlayer Idle_Aim_Gren
		$sequence Crouch_Idle_Upper_gren "Crouch_Idle_Counter_gren" FPS 30 weightlist upperbody addlayer Idle_Aim_Gren
		$sequence Crouch_Walk_Upper_gren "Crouch_Walk_Counter_gren" FPS 30 weightlist upperbody addlayer Idle_Aim_Gren

		$animation Run_Shoot_Gren_layer1 "Run_Shoot_Gren" frames 0 11 FPS 30 subtract Run_Shoot_Gren_layer1 0 weightlist upperbody
		$animation Run_Shoot_Gren_layer2 "Run_Shoot_Gren" frames 12 30 FPS 30 subtract Run_Shoot_Gren_layer2 12 weightlist upperbody
		$sequence Idle_Shoot_Gren1 "Run_Shoot_Gren_layer1" delta
		$sequence Idle_Shoot_Gren2 "Run_Shoot_Gren_layer2" delta
		$sequence Run_Shoot_Gren1 "Run_Shoot_Gren_layer1" delta
		$sequence Run_Shoot_Gren2 "Run_Shoot_Gren_layer2" delta
		$sequence Walk_Shoot_Gren1 "Run_Shoot_Gren_layer1" delta
		$sequence Walk_Shoot_Gren2 "Run_Shoot_Gren_layer2" delta
		$sequence Crouch_Idle_Shoot_Gren1 "Run_Shoot_Gren_layer1" delta
		$sequence Crouch_Idle_Shoot_Gren2 "Run_Shoot_Gren_layer2" delta
		$sequence Crouch_Walk_Shoot_Gren1 "Run_Shoot_Gren_layer1" delta
		$sequence Crouch_Walk_Shoot_Gren2 "Run_Shoot_Gren_layer2" delta


	//-----------------
	//    Knives
	//-----------------

		$sequence Idle_Upper_knife "Idle_Counter_gren" FPS 30 weightlist upperbody addlayer Idle_Aim_Gren
		$sequence Run_Upper_knife "Run_Counter_knife" FPS 30s weightlist upperbody addlayer Idle_Aim_Gren
		$sequence Walk_Upper_knife "Walk_Counter_gren" FPS 30 weightlist upperbody addlayer Idle_Aim_Gren
		$sequence Crouch_Idle_Upper_knife "Crouch_Idle_Counter_gren" FPS 30 weightlist upperbody addlayer Idle_Aim_Gren
		$sequence Crouch_Walk_Upper_knife "Crouch_Walk_Counter_gren" FPS 30 weightlist upperbody addlayer Idle_Aim_Gren

		$animation Run_Shoot_Knife_layer "Run_Shoot_Knife" FPS 30 subtract Run_Shoot_Knife_layer 0 weightlist upperbody
		$sequence Idle_Shoot_knife "Run_Shoot_knife_layer" delta
		$sequence Run_Shoot_knife "Run_Shoot_knife_layer" delta
		$sequence Walk_Shoot_knife "Run_Shoot_knife_layer" delta
		$sequence Crouch_Idle_Shoot_knife "Run_Shoot_knife_layer" delta
		$sequence Crouch_Walk_Shoot_knife "Run_Shoot_knife_layer" delta


	//-----------------
	//    C4
	//-----------------

		$sequence Idle_Upper_c4 "Idle_Counter_c4" FPS 30 weightlist upperbody addlayer Idle_Aim_Gren
		$sequence Walk_Upper_c4 "Walk_Counter_c4" FPS 30 weightlist upperbody addlayer Idle_Aim_Gren
		$sequence Run_Upper_c4 "Run_Counter_c4" FPS 30s weightlist upperbody addlayer Idle_Aim_Gren
		$sequence Crouch_Idle_Upper_c4 "Crouch_Idle_Counter_c4" FPS 30 weightlist upperbody addlayer Idle_Aim_Gren
		$sequence Crouch_Walk_Upper_c4 "Crouch_Walk_Counter_c4" FPS 30 weightlist upperbody addlayer Idle_Aim_Gren

		$animation c4_plant_layer "crouch_shoot_c4" FPS 30 subtract c4_plant_layer 0 weightlist upperbody
		$sequence Idle_Shoot_c4 "c4_plant_layer" delta
		$sequence Run_Shoot_c4 "c4_plant_layer" delta
		$sequence Walk_Shoot_c4 "c4_plant_layer" delta
		$sequence Crouch_Idle_Shoot_c4 "c4_plant_layer" delta
		$sequence Crouch_Walk_Shoot_c4 "c4_plant_layer" delta


//====================================================
//
//	Speaker Test Map Animation
//
//====================================================

	$sequence speaker_testpose "speaker_testpose" fps 15


//====================================================
//
//	Non-Violent Deaths
//
//====================================================

	$sequence Death1 "surrender01" fps 30 Lx LY

//====================================================
//
//	Death Poses
//
//====================================================

	$sequence deathpose_front "death_poses_front" fps 1 frame 0 6 activity ACT_DIE_FRONTSIDE 1
	$sequence deathpose_back  "death_poses_back"  fps 1 frame 0 6 activity ACT_DIE_BACKSIDE  1
	$sequence deathpose_right "death_poses_right" fps 1 frame 0 6 activity ACT_DIE_RIGHTSIDE 1
	$sequence deathpose_left  "death_poses_left"  fps 1 frame 0 6 activity ACT_DIE_LEFTSIDE  1
