/*
==============================================================================

QC script generated by Half-Life MDL Decompiler 1.2 
2003, Kratisto. Based on code from Valve's HL SDK.

v_tripmine.mdl

Original internal name:
"c:/sierra/half-life/gearbox/models/v_tripmine.mdl"

==============================================================================
*/

$modelname "v_tripmine_soldier_hd.mdl"
$cd "./"
$cdtexture "meshes/hd"
$cdtexture "../../textures/viewmodel/hands/soldier"
$cdtexture "../../textures/w_tripmine"
$scale 1.0


$bbox 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$cbox 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$eyeposition 0.000000 0.000000 0.000000


//reference mesh(es)
$bodygroup "hands"
{
studio "meshes/hd/v_soldier_hands_reference"
}

$bodygroup "mine"
{
studio "meshes/hd/V_tripmine_reference"
}


// 11 hit box(es)
$hbox 0 "Bip01 L Forearm" -0.400000 -2.110000 -1.220000 11.368419 2.590000 1.920000
$hbox 0 "Bip01 L Hand" 0.000000 -0.920000 -1.910000 3.790000 0.880000 1.870000
$hbox 0 "Bip01 L Finger0" 0.000000 -0.840000 -0.550000 2.540000 0.460000 1.160000
$hbox 0 "Bip01 L Finger31" 0.000000 -0.700000 -0.460000 1.136840 0.450000 0.550000
$hbox 0 "L_Arm_bone" -0.930000 -1.610000 -2.880000 1.520000 1.600000 0.000000
$hbox 0 "Bip01 R Forearm" -0.390000 -2.080000 -2.020000 11.368418 2.630000 1.120000
$hbox 0 "Bip01 R Hand" 0.000000 -1.100000 -1.850000 3.800000 0.780000 1.930000
$hbox 0 "Bip01 R Finger0" 0.000000 -0.830000 -1.260000 2.540000 0.460000 0.450000
$hbox 0 "Bip01 R Finger31" 0.000000 -0.800000 -0.520000 1.136842 0.350000 0.490000
$hbox 0 "R_Arm_bone" -1.450000 -1.610000 -2.760000 1.010000 1.600000 0.000000

// 9 animation sequence(s)
$sequence "idle1" "animations/hd/idle1" fps 15 loop 
$sequence "idle2" "animations/hd/idle2" fps 15 loop 
$sequence "arm1" "animations/hd/arm1" fps 15 
$sequence "place" "animations/hd/place" fps 30 
$sequence "fidget" "animations/hd/fidget" fps 30 loop 
$sequence "holster" "animations/hd/holster" fps 30 
$sequence "draw" "animations/hd/draw" fps 30 

// End of QC script.
