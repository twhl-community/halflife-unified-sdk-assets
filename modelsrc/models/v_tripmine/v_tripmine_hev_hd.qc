/*
==============================================================================

QC script generated by Half-Life MDL Decompiler 1.2 
2003, Kratisto. Based on code from Valve's HL SDK.

v_tripmine.mdl

Original internal name:
"c:/sierra/half-life/valve/models/v_tripmine.mdl"

==============================================================================
*/

$modelname "v_tripmine_hev_hd.mdl"
$cd "./"
$cdtexture "../../textures/viewmodel/hands/hev"
$cdtexture "../../textures/w_tripmine"
$scale 1.0


$bbox 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$cbox 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$eyeposition 0.000000 0.000000 0.000000


//reference mesh(es)
$bodygroup "hands"
{
studio "meshes/hd/v_gordon_hands_reference"
}

$bodygroup "mine"
{
studio "meshes/hd/V_tripmine_reference"
}


// 7 hit box(es)
$hbox 0 "Bip01 L Hand" 0.000000 -0.960000 -1.820000 3.910000 0.900000 1.710000
$hbox 0 "Bip01 L Finger0" 0.000000 -0.950000 -0.570000 2.450000 0.380000 0.970000
$hbox 0 "L_Arm_bone" -1.920000 -2.640000 -2.300000 2.760000 2.490000 7.980000
$hbox 0 "Bip01 R Hand" 0.000000 -0.990000 -1.710000 3.920000 0.870000 1.820000
$hbox 0 "Bip01 R Finger0" 0.000000 -0.940000 -1.000000 2.450000 0.390000 0.540000
$hbox 0 "R_Arm_bone" -2.620000 -2.640000 -2.290000 2.060000 2.490000 7.990000

// 9 animation sequence(s)
$sequence "idle1" "animations/hd/idle1" fps 15 loop 
$sequence "idle2" "animations/hd/idle2" fps 15 loop 
$sequence "arm1" "animations/hd/arm1" fps 15 
$sequence "place" "animations/hd/place" fps 30 
$sequence "fidget" "animations/hd/fidget" fps 30 loop 
$sequence "holster" "animations/hd/holster" fps 30 
$sequence "draw" "animations/hd/draw" fps 30 

// End of QC script.
