/*
==============================================================================

QC script generated by Half-Life MDL Decompiler 1.2 
2003, Kratisto. Based on code from Valve's HL SDK.

v_shotgun.mdl

Original internal name:
"c:/sierra/half-life/valve/models/v_shotgun.mdl"

==============================================================================
*/

$modelname "v_shotgun_hev_hd.mdl"
$cd "./"
$cdtexture "../../textures/viewmodel/hands/hev"
$cdtexture "../../textures/viewmodel/v_shotgun"
$scale 1.0


$bbox 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$cbox 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$eyeposition 0.000000 0.000000 0.000000


//reference mesh(es)
$body "studio" "meshes/hd/v_spas12_reference_test"

$body "studio" "meshes/hd/v_gordon_hands_reference"


// 1 attachment(s)
$attachment 0 "Bip01 R Hand" 30.000000 1.000000 6.000000

// 11 hit box(es)
$hbox 0 "Bip01 L Hand" 0.000000 -0.960000 -1.820000 3.910000 0.900000 1.710000
$hbox 0 "Bip01 L Finger0" 0.000000 -0.950000 -0.570000 2.450000 0.380000 0.970000
$hbox 0 "Bip01 L Finger02" -43.012970 -24.259079 -42.173767 0.310000 0.270000 0.400000
$hbox 0 "Reciever" -1.200000 -31.629999 -4.330000 1.260000 2.620000 2.560000
$hbox 0 "Stock" -2.060000 -6.450000 -0.660000 0.169631 0.530000 2.810000
$hbox 0 "Stock2" -2.170000 -2.990000 -1.120000 0.000000 0.190000 0.450000
$hbox 0 "Charger" -1.180000 -18.320000 -4.810000 1.800000 0.000000 0.700000
$hbox 0 "L_Arm_bone" -1.920000 -2.640000 -2.300000 2.760000 2.490000 7.980000
$hbox 0 "Bip01 R Hand" 0.000000 -0.990000 -1.710000 3.920000 0.870000 1.820000
$hbox 0 "Bip01 R Finger0" 0.000000 -0.940000 -1.000000 2.450000 0.390000 0.540000
$hbox 0 "R_Arm_bone" -2.620000 -2.640000 -2.290000 2.060000 2.490000 7.990000

// 10 animation sequence(s)
$sequence "sm_idle" "animations/hd/sm_idle" fps 9 loop 
$sequence "shoot" "animations/hd/shoot" fps 30 { event 5001 0 "31" } 
$sequence "shoot_big" "animations/hd/shoot_big" fps 30 { event 5001 0 "41" } 
$sequence "reload" "animations/hd/reload" fps 16 
$sequence "pump" "animations/hd/pump" fps 30 
$sequence "start_reload" "animations/hd/start_reload" fps 12 
$sequence "draw" "animations/hd/draw" fps 24 
$sequence "reholster" "animations/hd/reholster" fps 30 
$sequence "idle4" "animations/hd/idle4" fps 9 loop 
$sequence "deepidle" "animations/hd/deepidle" fps 12 loop 

// End of QC script.
