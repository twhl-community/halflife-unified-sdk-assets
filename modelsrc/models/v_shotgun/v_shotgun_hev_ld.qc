/*
==============================================================================

QC script generated by Half-Life MDL Decompiler 1.2 
2003, Kratisto. Based on code from Valve's HL SDK.

v_shotgun.mdl

Original internal name:
"valve/models/v_shotgun.mdl"

==============================================================================
*/

$modelname "v_shotgun_hev_ld.mdl"
$cd "./"
$cdtexture "../../textures/viewmodel/hands/hev"
$cdtexture "../../textures/viewmodel/v_shotgun"
$scale 1.0


$bbox 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$cbox 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$eyeposition 0.000000 0.000000 0.000000


//reference mesh(es)
$body "studio" "meshes/ld/v_shotgun_reference"

$body "studio" "meshes/ld/shell"

$body "studio" "meshes/ld/v_gordon_hands_reference"


// 1 attachment(s)
$attachment 0 "Bip01 R Hand" 30.000000 1.000000 6.000000

// 5 hit box(es)
$hbox 0 "Bip01 L Arm2" 0.000000 -2.030000 -2.940000 12.710000 1.850000 2.200000
$hbox 0 "Bip01 L Hand" 0.000000 -0.790000 -1.770000 4.120000 1.250000 1.890000
$hbox 0 "Bip01 L Finger0" -0.120000 -1.220000 -0.320000 1.440000 0.660000 0.840000
$hbox 0 "Bip01 R Hand" 0.000000 -0.620000 0.000000 26.430000 1.530000 6.260000
$hbox 0 "Bone01" -1.900000 -2.490000 -1.550000 7.090000 1.480000 1.700000

// 10 animation sequence(s)
$sequence "sm_idle" "animations/ld/sm_idle" fps 9 loop 
$sequence "shoot" "animations/ld/shoot" fps 20 { event 5001 0 "31" } 
$sequence "shoot_big" "animations/ld/shoot_big" fps 13 { event 5001 0 "41" } 
$sequence "reload" "animations/ld/reload" fps 16 
$sequence "pump" "animations/ld/pump" fps 13 
$sequence "start_reload" "animations/ld/start_reload" fps 12 
$sequence "draw" "animations/ld/draw" fps 24 
$sequence "reholster" "animations/ld/reholster" fps 30 
$sequence "idle4" "animations/ld/idle4" fps 9 loop 
$sequence "deepidle" "animations/ld/deepidle" fps 12 loop 

// End of QC script.
