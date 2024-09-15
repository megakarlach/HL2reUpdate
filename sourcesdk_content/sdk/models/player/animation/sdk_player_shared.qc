$modelname player\sdk_player_shared.mdl
$include "..\bones1.qci"
$include "..\ruleshierarchy.qci"
$include "sdk_macros.qci"

//-----------------------------------------------------------------------------------
// References
//-----------------------------------------------------------------------------------
$animation a_reference "idle" lx ly
$sequence ragdollspawn "idle" lx ly

//-----------------------------------------------------------------------------------
// Aim Matrix - General
//-----------------------------------------------------------------------------------
$SDKAimLayer aimmatrix_idle 				"aim_matrix_bar_idle"
$SDKAimLayer aimmatrix_idle_aim				"aim_matrix_bar_idle_aim"
$SDKAimLayer aimmatrix_crouch_idle			"aim_matrix_bar_crouch_idle"
$SDKAimLayer aimmatrix_crouch_idle_aim			"aim_matrix_bar_crouch_idle_aim"
$SDKAimLayer aimmatrix_crouch_walk			"aim_matrix_bar_crouch_idle"
$SDKAimLayer aimmatrix_walk 				"aim_matrix_bar_idle"
$SDKAimLayer aimmatrix_run 				"aim_matrix_bar_idle"
$SDKAimLayer aimmatrix_prone_idle 			"aim_matrix_bar_prone"

$SDKAimLayer aimmatrix_idle_mg42 			"aim_matrix_mg42_idle"
$SDKAimLayer aimmatrix_idle_aim_mg42 			"aim_matrix_mg42_idle_aim"
$SDKAimLayer aimmatrix_crouch_idle_mg42 		"aim_matrix_mg42_crouch_idle"
$SDKAimLayer aimmatrix_crouch_idle_aim_mg42		"aim_matrix_mg42_idle_aim"
$SDKAimLayer aimmatrix_crouch_walk_mg42			"aim_matrix_mg42_crouch_idle"
$SDKAimLayer aimmatrix_walk_mg42 			"aim_matrix_mg42_idle"
$SDKAimLayer aimmatrix_run_mg42 			"aim_matrix_mg42_idle"
$SDKAimLayer aimmatrix_prone_idle_mg42			"aim_matrix_mg42_idle_aim"

$SDKAimLayer aimmatrix_idle_30cal 			"aim_matrix_30cal_idle"
$SDKAimLayer aimmatrix_idle_aim_30cal 			"aim_matrix_mg42_idle_aim"
$SDKAimLayer aimmatrix_crouch_idle_30cal 		"aim_matrix_30cal_crouch_idle"
$SDKAimLayer aimmatrix_crouch_idle_aim_30cal		"aim_matrix_mg42_idle_aim"
$SDKAimLayer aimmatrix_crouch_walk_30cal		"aim_matrix_30cal_crouch_idle"
$SDKAimLayer aimmatrix_walk_30cal 			"aim_matrix_30cal_idle"
$SDKAimLayer aimmatrix_run_30cal 			"aim_matrix_30cal_idle"
$SDKAimLayer aimmatrix_prone_idle_30cal			"aim_matrix_mg42_idle_aim"

$SDKAimLayer aimmatrix_idle_bazooka 			"aim_matrix_bazooka_idle"
$SDKAimLayer aimmatrix_idle_aim_bazooka			"aim_matrix_bazooka_idle_aim"
$SDKAimLayer aimmatrix_crouch_idle_bazooka		"aim_matrix_bazooka_crouch_idle"
$SDKAimLayer aimmatrix_crouch_idle_aim_bazooka		"aim_matrix_bazooka_crouch_idle_aim"
$SDKAimLayer aimmatrix_crouch_walk_bazooka		"aim_matrix_bazooka_crouch_idle"
$SDKAimLayer aimmatrix_walk_bazooka			"aim_matrix_bazooka_idle"
$SDKAimLayer aimmatrix_run_bazooka 			"aim_matrix_bazooka_idle"
$SDKAimLayer aimmatrix_prone_idle_bazooka 		"aim_matrix_bazooka_prone"

$SDKAimLayer aimmatrix_idle_grenade 			"aim_matrix_grenade_idle"
$SDKAimLayer aimmatrix_crouch_idle_grenade 		"aim_matrix_grenade_crouch_idle"
$SDKAimLayer aimmatrix_crouch_walk_grenade 		"aim_matrix_grenade_crouch_idle"
$SDKAimLayer aimmatrix_walk_grenade  			"aim_matrix_grenade_idle"
$SDKAimLayer aimmatrix_run_grenade  			"aim_matrix_grenade_idle"
$SDKAimLayer aimmatrix_prone_idle_grenade  		"aim_matrix_grenade_prone"

$SDKAimLayer aimmatrix_idle_pistol 			"aim_matrix_bar_idle"
$SDKAimLayer aimmatrix_idle_aim_pistol			"aim_matrix_pistol_idle_aim"
$SDKAimLayer aimmatrix_crouch_idle_pistol		"aim_matrix_pistol_crouch_idle"
$SDKAimLayer aimmatrix_crouch_idle_aim_pistol		"aim_matrix_pistol_crouch_idle_aim"
$SDKAimLayer aimmatrix_crouch_walk_pistol		"aim_matrix_pistol_crouch_idle"
$SDKAimLayer aimmatrix_walk_pistol 			"aim_matrix_bar_idle"
$SDKAimLayer aimmatrix_run_pistol 			"aim_matrix_bar_idle"
$SDKAimLayer aimmatrix_prone_idle_pistol 		"aim_matrix_bar_prone"


//-----------------------------------------------------------------------------------
// Prone
//-----------------------------------------------------------------------------------
$sequence ProneDown_Stand  "stand_to_prone"  LX LY alignto a_reference activity ACT_MP_STAND_TO_PRONE 1
$sequence ProneUp_Stand    "prone_to_stand"  LX LY alignto a_reference activity ACT_MP_PRONE_TO_STAND 1
$sequence ProneDown_Crouch "crouch_to_prone" LX LY alignto a_reference activity ACT_MP_CROUCH_TO_PRONE 1
$sequence ProneUp_Crouch   "prone_to_crouch" LX LY alignto a_reference activity ACT_MP_PRONE_TO_CROUCH 1

//-----------------------------------------------------------------------------------
// Jump
//-----------------------------------------------------------------------------------
$sequence Jump "jump" alignto a_reference activity ACT_MP_JUMP 1

//-----------------------------------------------------------------------------------
// Weapon Idle fS fSE fE fNE fN fNW fW fSW
//-----------------------------------------------------------------------------------
$definemacro SDKWeaponIdle name frame filename filename2 filename3 filename4 \\
$sequence StandIdle_$name$  "Idle_Poses_Standing"  frame $frame$ $frame$ origin -6 0 0 loop numframes 16 addlayer aimmatrix_idle        activity ACT_DOD_STAND_IDLE_$name$ 1 ikrule lhand touch "ValveBiped.Bip01_R_Hand" cmdlist foottouch \\
$sequence CrouchIdle_$name$ "Idle_Poses_Crouching" frame $frame$ $frame$ origin -6 0 0 loop numframes 16 addlayer aimmatrix_crouch_idle activity ACT_DOD_CROUCH_IDLE_$name$ 1 ikrule lhand touch "ValveBiped.Bip01_R_Hand" cmdlist foottouch \\
$sequence ProneWalkIdle_$name$ $filename4$ loop LX LY origin -4 0 0 activity ACT_DOD_PRONEWALK_IDLE_$name$ 1 ikrule lhand release ikrule rhand release \\
$SDKWalkWithWeaponPose WalkIdle_$name$ "Idle_Poses_Standing" $frame$ aimmatrix_walk ACT_DOD_WALK_IDLE_$name$ \\
$SDKCrouchWalkWithWeapon CrouchWalkIdle_$name$ $filename2$ "Idle_Poses_Crouching" $frame$ aimmatrix_crouch_walk ACT_DOD_CROUCHWALK_IDLE_$name$  \\
$SDKRunWithWeapon RunIdle_$name$ $filename$ "Idle_Poses_Standing" $frame$ aimmatrix_run ACT_DOD_RUN_IDLE_$name$ \\
$SDKSprintWithWeapon SprintIdle_$name$ $filename3$ "Idle_Poses_Standing" $frame$ aimmatrix_run ACT_DOD_SPRINT_IDLE_$name$ \\

//-----------------------------------------------------------------------------------
// Weapon Aim
//-----------------------------------------------------------------------------------
$definemacro SDKWeaponAim name frame \\
$sequence StandAim_$name$  "Aim_Poses_Standing"  frame $frame$ $frame$ loop numframes 16 origin -6 0 0 addlayer aimmatrix_idle_aim     activity ACT_DOD_STAND_AIM_$name$ 1  ikrule lhand touch "ValveBiped.Bip01_R_Hand" cmdlist foottouch \\
$sequence CrouchAim_$name$ "Aim_Poses_Crouching" frame $frame$ $frame$ loop numframes 16 origin -6 0 0 addlayer aimmatrix_crouch_idle_aim  activity ACT_DOD_CROUCH_AIM_$name$ 1 ikrule lhand touch "ValveBiped.Bip01_R_Hand" cmdlist foottouch \\
$sequence ProneAim_$name$  "Aim_Poses_Prone"     frame $frame$ $frame$ loop numframes 16 alignto StandAim_$name$ addlayer aimmatrix_prone_idle   activity ACT_DOD_PRONE_AIM_$name$ 1  ikrule lhand touch "ValveBiped.Bip01_R_Hand"\\
$SDKWalkWithWeaponPose WalkAim_$name$  "Aim_Poses_Standing" $frame$ aimmatrix_idle_aim ACT_DOD_WALK_AIM_$name$ \\
$SDKCrouchWalkWithWeaponPose CrouchWalkAim_$name$  "Aim_Poses_Crouching"  $frame$ aimmatrix_crouch_idle_aim ACT_DOD_CROUCHWALK_AIM_$name$ \\
$SDKRunWithWeaponPose RunAim_$name$  "Aim_Poses_Standing" $frame$ aimmatrix_idle_aim ACT_DOD_RUN_AIM_$name$ \\

//-----------------------------------------------------------------------------------
// Weapon Idle Specified Aim Matrix
//-----------------------------------------------------------------------------------
$definemacro SDKWeaponIdleSpecifyAimMatrix name name2 frame filename filename2 filename3 filename4 \\
$sequence StandIdle_$name$  "Idle_Poses_Standing"  frame $frame$ $frame$ loop numframes 16 origin -6 0 0 addlayer aimmatrix_idle_$name2$        activity ACT_DOD_STAND_IDLE_$name$ 1  ikrule lhand touch "ValveBiped.Bip01_R_Hand" cmdlist foottouch \\
$sequence CrouchIdle_$name$ "Idle_Poses_Crouching" frame $frame$ $frame$ loop numframes 16 origin -6 0 0 addlayer aimmatrix_crouch_idle_$name2$ activity ACT_DOD_CROUCH_IDLE_$name$ 1 ikrule lhand touch "ValveBiped.Bip01_R_Hand" cmdlist foottouch \\
$sequence ProneWalkIdle_$name$ $filename4$ loop LX LY alignto StandIdle_$name$ activity ACT_DOD_PRONEWALK_IDLE_$name$ 1 \\
$SDKWalkWithWeaponPose WalkIdle_$name$ "Idle_Poses_Standing" $frame$ aimmatrix_walk_$name2$ ACT_DOD_WALK_IDLE_$name$ \\
$SDKCrouchWalkWithWeapon CrouchWalkIdle_$name$ $filename2$ "Idle_Poses_Crouching" $frame$ aimmatrix_crouch_walk_$name2$ ACT_DOD_CROUCHWALK_IDLE_$name$  \\
$SDKRunWithWeapon RunIdle_$name$ $filename$ "Idle_Poses_Standing" $frame$ aimmatrix_run_$name2$ ACT_DOD_RUN_IDLE_$name$ \\
$SDKSprintWithWeapon SprintIdle_$name$ $filename3$ "Idle_Poses_Standing" $frame$ aimmatrix_run_$name2$ ACT_DOD_SPRINT_IDLE_$name$ \\

//-----------------------------------------------------------------------------------
// Weapon Aim Specified Aim Matrix
//-----------------------------------------------------------------------------------
$definemacro SDKWeaponAimSpecifyAimMatrix name name2 frame \\
$sequence StandAim_$name$  "Aim_Poses_Standing"  frame $frame$ $frame$ loop numframes 16 origin -6 0 0 addlayer aimmatrix_idle_aim_$name2$     activity ACT_DOD_STAND_AIM_$name$ 1  ikrule lhand touch "ValveBiped.Bip01_R_Hand" cmdlist foottouch \\
$sequence CrouchAim_$name$ "Aim_Poses_Crouching" frame $frame$ $frame$ loop numframes 16 origin -6 0 0 addlayer aimmatrix_crouch_idle_aim_$name2$  activity ACT_DOD_CROUCH_AIM_$name$ 1 ikrule lhand touch "ValveBiped.Bip01_R_Hand" cmdlist foottouch \\
$sequence ProneAim_$name$  "Aim_Poses_Prone"     frame $frame$ $frame$ loop numframes 16 alignto StandAim_$name$  addlayer aimmatrix_prone_idle_$name2$   activity ACT_DOD_PRONE_AIM_$name$ 1  ikrule lhand touch "ValveBiped.Bip01_R_Hand"\\
$SDKWalkWithWeaponPose WalkAim_$name$  "Aim_Poses_Standing" $frame$ aimmatrix_idle_aim_$name2$ ACT_DOD_WALK_AIM_$name$ \\
$SDKCrouchWalkWithWeaponPose CrouchWalkAim_$name$  "Aim_Poses_Crouching"  $frame$ aimmatrix_crouch_idle_aim_$name2$ ACT_DOD_CROUCHWALK_AIM_$name$ \\
$SDKRunWithWeaponPose RunAim_$name$  "Aim_Poses_Standing" $frame$ aimmatrix_idle_aim_$name2$ ACT_DOD_RUN_AIM_$name$ \\



//-----------------------------------------------------------------------------------
// Weapon Grenade
//-----------------------------------------------------------------------------------
$definemacro SDKWeaponGrenade name frame filename filename2 filename3 filename4 \\
$sequence StandIdle_$name$  "Idle_Poses_Standing"  frame $frame$ $frame$ loop numframes 16 origin -6 0 0 addlayer aimmatrix_idle_grenade      activity ACT_DOD_STAND_AIM_$name$ 1 cmdlist foottouch \\
$sequence CrouchIdle_$name$ "Idle_Poses_Crouching" frame $frame$ $frame$ loop numframes 16 origin -6 0 0 addlayer aimmatrix_crouch_idle_grenade activity ACT_DOD_CROUCH_AIM_$name$ 1 cmdlist foottouch \\
$sequence ProneAim_$name$   "Aim_Poses_Prone"      frame $frame$ $frame$ loop numframes 16 alignto StandIdle_$name$  addlayer aimmatrix_prone_idle_grenade  activity ACT_DOD_PRONE_AIM_$name$ 1 \\
$sequence ProneWalkAim_$name$ $filename4$ loop LX LY alignto a_reference activity ACT_DOD_PRONEWALK_AIM_$name$ 1 \\
$SDKWalkWithWeaponPose WalkIdle_$name$ "Idle_Poses_Standing" $frame$ aimmatrix_walk_grenade ACT_DOD_WALK_AIM_$name$ \\
$SDKCrouchWalkWithWeapon CrouchWalkIdle_$name$ $filename2$ "Idle_Poses_Crouching" $frame$ aimmatrix_crouch_walk_grenade ACT_DOD_CROUCHWALK_AIM_$name$ \\
$SDKRunWithWeapon RunIdle_$name$ $filename$ "Idle_Poses_Standing" $frame$ aimmatrix_run_grenade ACT_DOD_RUN_AIM_$name$ \\
$SDKSprintWithWeapon SprintAim_$name$ $filename3$ "Idle_Poses_Standing" $frame$ aimmatrix_run_grenade ACT_DOD_SPRINT_AIM_$name$ \\

//-----------------------------------------------------------------------------------
// Weapon Melee
//-----------------------------------------------------------------------------------
$definemacro SDKWeaponMelee name frame filename filename2 filename3 filename4 \\
$sequence StandIdle_$name$  "Idle_Poses_Standing"  frame $frame$ $frame$ loop numframes 16 origin -6 0 0 addlayer aimmatrix_idle_grenade 	      activity ACT_DOD_STAND_AIM_$name$ 1 cmdlist foottouch \\
$sequence CrouchIdle_$name$ "Idle_Poses_Crouching" frame $frame$ $frame$ loop numframes 16 origin -6 0 0 addlayer aimmatrix_crouch_idle_grenade activity ACT_DOD_CROUCH_AIM_$name$ 1 cmdlist foottouch \\
$sequence ProneAim_$name$   "Aim_Poses_Prone"      frame $frame$ $frame$ loop numframes 16 alignto StandIdle_$name$  addlayer aimmatrix_prone_idle_grenade  activity ACT_DOD_PRONE_AIM_$name$ 1 \\
$sequence ProneWalkAim_$name$ $filename4$ loop LX LY alignto StandIdle_$name$  activity ACT_DOD_PRONEWALK_AIM_$name$ 1 \\
$SDKWalkWithWeaponPose WalkIdle_$name$ "Idle_Poses_Standing" $frame$ aimmatrix_walk_grenade ACT_DOD_WALK_AIM_$name$ \\
$SDKCrouchWalkWithWeapon CrouchWalkIdle_$name$ $filename2$ "Idle_Poses_Crouching" $frame$ aimmatrix_crouch_walk_grenade ACT_DOD_CROUCHWALK_AIM_$name$ \\
$SDKRunWithWeapon RunIdle_$name$ $filename$ "Idle_Poses_Standing" $frame$ aimmatrix_run_grenade ACT_DOD_RUN_AIM_$name$ \\
$SDKSprintWithWeapon SprintAim_$name$ $filename3$ "Idle_Poses_Standing" $frame$ aimmatrix_run_grenade ACT_DOD_SPRINT_AIM_$name$ \\

//-----------------------------------------------------------------------------------
// Attack
//-----------------------------------------------------------------------------------
$definemacro SDKWeaponAttack name filename filename2 \\
$SDKGestureAttack Attack_$name$      $filename$   ACT_DOD_PRIMARYATTACK_$name$ \\
$SDKGestureAttack AttackProne_$name$ $filename2$  ACT_DOD_PRIMARYATTACK_PRONE_$name$ \\

//-----------------------------------------------------------------------------------
// Attack IK Release - use only for Bolt!!! unique shell eject event
//-----------------------------------------------------------------------------------
$definemacro SDKWeaponAttackIKRelease name filename filename2 \\
$SDKGestureAttackIkRelease Attack_$name$      $filename$   ACT_DOD_PRIMARYATTACK_$name$ \\
$SDKGestureAttackIkRelease AttackProne_$name$ $filename2$  ACT_DOD_PRIMARYATTACK_PRONE_$name$ \\

//-----------------------------------------------------------------------------------
// Attack Melee
//-----------------------------------------------------------------------------------
$definemacro SDKWeaponAttackMelee name filename filename2 filename3 \\
$SDKGestureAttackIKRelease Attack_$name$      	$filename$   ACT_DOD_PRIMARYATTACK_$name$ \\
$SDKGestureAttackIKRelease AttackCrouch_$name$ 	$filename2$  ACT_DOD_PRIMARYATTACK_CROUCH_$name$ \\
$SDKGestureAttackIKRelease AttackProne_$name$ 	$filename3$  ACT_DOD_PRIMARYATTACK_PRONE_$name$ \\

//-----------------------------------------------------------------------------------
// Secondary Attack Melee
//-----------------------------------------------------------------------------------
$definemacro SDKWeaponSecondaryAttackMelee name filename filename2 filename3 \\
$SDKGestureAttackNoLock SecondaryAttack_$name$      	$filename$    ACT_DOD_SECONDARYATTACK_$name$ \\
$SDKGestureAttackNoLock SecondaryAttackCrouch_$name$    $filename2$   ACT_DOD_SECONDARYATTACK_CROUCH_$name$ \\
$SDKGestureAttackNoLock SecondaryAttackProne_$name$ 	$filename3$   ACT_DOD_SECONDARYATTACK_PRONE_$name$ \\

//-----------------------------------------------------------------------------------
// Reload
//-----------------------------------------------------------------------------------
$definemacro SDKWeaponReload name filename filename2 filename3 \\
$SDKGestureReloadLeft Reload_$name$	       $filename$   ACT_DOD_RELOAD_$name$ \\
$SDKGestureReloadLeft ReloadCrouch_$name$  $filename2$  ACT_DOD_RELOAD_CROUCH_$name$ \\
$SDKGestureReloadLeft ReloadProne_$name$   $filename3$  ACT_DOD_RELOAD_PRONE_$name$ \\

$definemacro SDKWeaponReloadPistol name filename filename2 filename3 start startto endto end \\
$SDKGestureReloadPistol Reload_$name$	       $filename$   ACT_DOD_RELOAD_$name$ $start$ $startto$ $endto$ $end$ \\
$SDKGestureReloadPistol ReloadCrouch_$name$  $filename2$  ACT_DOD_RELOAD_CROUCH_$name$ $start$ $startto$ $endto$ $end$ \\
$SDKGestureReloadPistol ReloadProne_$name$   $filename3$  ACT_DOD_RELOAD_PRONE_$name$ $start$ $startto$ $endto$ $end$ \\

//-----------------------------------------------------------------------------------
// Reload Rocket Launchers
//-----------------------------------------------------------------------------------
$definemacro SDKWeaponReloadLauncher name filename filename2 filename3 filename4 \\
$SDKGestureReloadLeft Reload_$name$	        $filename$   ACT_DOD_RELOAD_$name$ \\
$SDKGestureReloadLeft ReloadCrouch_$name$  	$filename2$  ACT_DOD_RELOAD_CROUCH_$name$ \\
$SDKGestureReloadLeft ReloadProne_$name$   	$filename4$  ACT_DOD_RELOAD_PRONE_$name$ \\


//===================================================================================
// Rifle(s) - BAR
//===================================================================================
$SDKWeaponIdle 	 BAR   0 "run_n_bar" "crouch_n_bar" "sprint_n_bar" "prone_n_bar"
$SDKWeaponAim 	 BAR   0
$SDKWeaponAttack BAR  "shoot_mp44" "shoot_mp44"
$SDKWeaponReload BAR  "reload_bar" "reload_bar_crouch" "reload_bar_prone"


//===================================================================================
// Rifle(s) - Garand, M1Carbine
//===================================================================================
$SDKWeaponIdle 	 RIFLE 	13 "run_n_rifle" "crouch_n_rifle" "sprint_n_rifle" "prone_n_rifle"
$SDKWeaponAim 	 RIFLE 	13
$SDKWeaponAttack RIFLE  "shoot_mp44" "shoot_mp44"
$SDKWeaponReload RIFLE  "reload_k98" "reload_k98_crouch" "reload_k98_prone"
$SDKWeaponReload M1CARBINE "reload_mp44" "reload_mp44_crouch" "reload_mp44_prone"	

//===================================================================================
// Rifle(s) Bolt - Springfield, K98Sniper, K98
//===================================================================================
$SDKWeaponIdle 	 BOLT 	13 "run_n_rifle" "crouch_n_rifle" "sprint_n_rifle" "prone_n_rifle"
$SDKWeaponAim 	 BOLT 	13
$SDKWeaponAttackIKRelease BOLT  "shoot_k98" "shoot_k98"
$SDKWeaponReload BOLT  "reload_k98" "reload_k98_crouch" "reload_k98_prone"

//===================================================================================
// Rifle(s) Rifle Grenade - Garand, K98
//===================================================================================
$SDKWeaponReload RIFLEGRENADE  "reload_rg" "reload_rg_crouch" "reload_rg_prone"

//===================================================================================
// C96
//===================================================================================
$SDKWeaponIdle 	 C96   14 "run_n_c96" "crouch_n_c96" "sprint_n_thompson" "prone_n_thompson"
$SDKWeaponAim 	 C96   14
$SDKWeaponAttack C96  "shoot_mp44" "shoot_mp44"
$SDKWeaponReloadPistol C96  "reload_mp44" "reload_mp44_crouch" "reload_mp44_prone" 0 5 95 100

//===================================================================================
// MP44
//===================================================================================
$SDKWeaponIdle   MP44  	1 "run_n_mp44" "crouch_n_mp44" "sprint_n_mp44" "prone_n_mp44"
$SDKWeaponAim    MP44  	1
$SDKWeaponAttack MP44   "shoot_mp44" "shoot_mp44"
$SDKWeaponReload MP44   "reload_mp44" "reload_mp44_crouch" "reload_mp44_prone"

//===================================================================================
// MP40
//===================================================================================
$SDKWeaponIdle   MP40  	2 "run_n_mp40" "crouch_n_mp40" "sprint_n_mp40" "prone_n_mp40"
$SDKWeaponAim 	 MP40  	2
$SDKWeaponAttack MP40   "shoot_mp44" "shoot_mp44"
$SDKWeaponReload MP40   "reload_mp44" "reload_mp44_crouch" "reload_mp44_prone"
$SDKWeaponSecondaryAttackMelee MP40	"Punch_mp40" "Punch_mp40_crouch" "Punch_mp40_prone"

//===================================================================================
// TOMMY - Thompson
//===================================================================================
$SDKWeaponIdle   TOMMY 	   3 	"run_n_thompson" "crouch_n_thompson" "sprint_n_thompson" "prone_n_thompson"
$SDKWeaponAim 	 TOMMY 	   3
$SDKWeaponAttack TOMMY     "shoot_mp44" "shoot_mp44"
$SDKWeaponReload TOMMY  "reload_thompson" "reload_thompson_crouch" "reload_thompson_prone"
$SDKWeaponSecondaryAttackMelee TOMMY	"Punch_Thompson" "Punch_Thompson_crouch" "Punch_Thompson_prone"

//===================================================================================
// MG - MG42
//===================================================================================
$SDKWeaponIdleSpecifyAimMatrix   	MG	MG42	4	"run_n_mg42" "crouch_n_mg42" "sprint_n_mg42" "prone_n_mg42"
$SDKWeaponAimSpecifyAimMatrix    	MG 	MG42	4
$SDKWeaponAttack 	MG  	"shoot_mp44" "shoot_mp44"
$SDKWeaponReload 	MG  	"reload_mg42" "reload_mg42" "reload_mg42_prone" 

//===================================================================================
// 30CAL
//===================================================================================
$SDKWeaponIdleSpecifyAimMatrix 	30CAL	30cal	7	"run_n_30cal" "crouch_n_30cal" "sprint_n_30cal" "prone_n_30cal"
$SDKWeaponAimSpecifyAimMatrix 	30CAL	30cal	7
$SDKWeaponAttack 	30CAL  "shoot_mp44" "shoot_mp44"
$SDKWeaponReload 	30CAL  "reload_30cal" "reload_30cal" "reload_30cal_prone"

//===================================================================================
// Pistol - Colt, Lugar
//===================================================================================
$SDKWeaponIdleSpecifyAimMatrix   PISTOL  PISTOL	 	8	"run_n_pistol" "crouch_n_pistol" "sprint_n_pistol" "prone_n_pistol"
$SDKWeaponAimSpecifyAimMatrix 	 PISTOL	 PISTOL  	8
$SDKWeaponAttack PISTOL  "shoot_pistol" "shoot_pistol"
$SDKWeaponReloadPistol PISTOL  "reload_pistol" "reload_pistol_crouch" "reload_pistol_prone" 0 8 55 63

//===================================================================================
// Grenade - Frag, Stick
//===================================================================================
$SDKWeaponGrenade GREN_STICK  9	   "run_n_stick" "crouch_n_stick" "sprint_n_stick" "prone_n_stick"
$SDKWeaponAttackMelee GREN_STICK   "shoot_stick_grenade" "shoot_stick_grenade_crouch" "shoot_stick_grenade_prone"

$SDKWeaponGrenade GREN_FRAG   10	"run_n_frag" "crouch_n_frag" "sprint_n_frag" "prone_n_frag"
$SDKWeaponAttackMelee  GREN_FRAG    "shoot_frag_grenade" "shoot_frag_grenade_crouch" "shoot_stick_grenade_prone"

//===================================================================================
// Melee - Knife, Spade
//===================================================================================
$SDKWeaponMelee  KNIFE	11	  "run_n_knife" "crouch_n_knife" "sprint_n_knife" "prone_n_knife"
$SDKWeaponAttackMelee KNIFE   "shoot_knife" "shoot_knife_crouch" "shoot_knife_prone"

$SDKWeaponMelee  SPADE	12	  "run_n_spade" "crouch_n_spade" "sprint_n_spade" "prone_n_spade"
$SDKWeaponAttackMelee SPADE	  "shoot_spade" "shoot_spade_crouch" "shoot_stick_grenade_prone"


