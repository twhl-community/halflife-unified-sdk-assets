/*
==============================================================================

QC script generated by Half-Life MDL Decompiler 1.2 
2003, Kratisto. Based on code from Valve's HL SDK.

v_357.mdl

Original internal name:
"c:/sierra/half-life/gearbox/models/v_357.mdl"

==============================================================================
*/

$modelname "v_357_soldier_ld.mdl"
$cd "./"
$cdtexture "../../textures/viewmodel/hands/soldier"
$cdtexture "../../textures/viewmodel/v_357/ld"
$scale 1.0


$bbox 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$cbox 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$eyeposition 0.000000 0.000000 0.000000


//reference mesh(es)
$body "gun" "meshes/ld/python_gun"

$body "bullets" "meshes/ld/python_bullets"

$body "speedload" "meshes/ld/python_speedload"

$body "hands" "meshes/ld/v_soldier_hands_reference"

$bodygroup "scope"
{
blank
studio "meshes/ld/python_lasersight"
}


// 1 attachment(s)
$attachment 0 "python_master" 0.000000 -14.000000 6.000000

// 12 hit box(es)
$hbox 0 "Bip01 R Arm2" -0.290000 -2.040000 -1.980000 11.550000 2.690000 1.160000
$hbox 0 "Bip01 R Hand" 0.000000 -1.110000 -1.850000 3.910000 0.925514 2.110000
$hbox 0 "python_master" -0.780000 -13.540000 -1.090000 1.010000 1.460000 8.700000
$hbox 0 "cylinder_spin" -1.300000 -2.000000 -1.420000 1.500000 0.300000 1.420000
$hbox 0 "Speedload Master" -0.880000 -4.630000 -1.030000 1.020000 0.080000 1.160000
$hbox 0 "Bip01 L Arm2" -0.410000 -2.060000 -1.220000 11.430000 2.670000 1.920000
$hbox 0 "Bip01 L Hand" 0.000000 -1.050000 -2.130000 3.790000 0.880000 1.830000
$hbox 0 "Bip01 L Finger0" 0.000000 -0.880000 -0.540000 2.530000 0.410000 1.030000
$hbox 0 "Bip01 L Finger31" 0.000000 -0.700000 -0.530000 1.136840 0.450000 0.490000
$hbox 0 "Bip01 R Finger0" 0.000000 -0.790000 -1.080000 2.630000 0.520000 0.480000
$hbox 0 "Bip01 R Finger31" 0.000000 -0.760000 -0.510000 1.220000 0.390000 0.510000
$hbox 0 "sight_master" -1.050000 -1.570000 -0.760000 1.140000 1.910000 4.720000

// 8 animation sequence(s)
$sequence "idle1" "animations/ld/idle1" fps 30 loop 
$sequence "fidget1" "animations/ld/fidget1" fps 30 
$sequence "fire1" "animations/ld/fire1" fps 30 { event 5001 0 "31" } 
$sequence "reload" "animations/ld/reload" fps 36 { event 5004 70 "weapons/357_reload1.wav" } 
$sequence "holster" "animations/ld/holster" fps 30 
$sequence "draw" "animations/ld/draw" fps 30 
$sequence "idle2" "animations/ld/idle2" fps 30 loop 
$sequence "idle3" "animations/ld/idle3" fps 30 loop 

// End of QC script.
