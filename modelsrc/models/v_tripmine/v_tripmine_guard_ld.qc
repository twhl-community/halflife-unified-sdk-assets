/*
==============================================================================

QC script generated by Half-Life MDL Decompiler 1.2 
2003, Kratisto. Based on code from Valve's HL SDK.

v_tripmine.mdl

Original internal name:
"c:/sierra/half-life/barney/models/v_tripmine.mdl"

==============================================================================
*/

$modelname "v_tripmine_guard_ld.mdl"
$cd "./"
$cdtexture "../../textures/viewmodel/hands/guard"
$cdtexture "../../textures/w_tripmine"
$scale 1.0


$bbox 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$cbox 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$eyeposition 0.000000 0.000000 0.000000


//reference mesh(es)
$bodygroup "hands"
{
studio "meshes/ld/v_barney_hands_reference"
}

$bodygroup "mine"
{
studio "meshes/ld/tripmine_mine"
}


// 7 hit box(es)
$hbox 0 "Bip01 L Arm2" -0.690000 -2.150000 -1.970000 11.368419 2.820000 2.440000
$hbox 0 "Bip01 L Hand" -0.560000 -1.540000 -2.120000 3.910000 1.220000 2.450000
$hbox 0 "Bip01 L Finger0" 0.000000 -0.900000 -0.460000 2.480000 0.330000 0.910000
$hbox 0 "Bip01 R Arm2" -0.690000 -2.150000 -2.460000 11.368418 2.820000 1.950000
$hbox 0 "Bip01 R Hand" -0.560000 -1.560000 -2.450000 3.910000 1.200000 1.880000
$hbox 0 "Bip01 R Finger0" 0.000000 -0.890000 -0.930000 2.480000 0.330000 0.440000

// 9 animation sequence(s)
$sequence "idle1" "animations/ld/idle1" fps 30 loop 
$sequence "idle2" "animations/ld/idle2" fps 30 loop 
$sequence "arm1" "animations/ld/arm1" fps 60 
$sequence "place" "animations/ld/place" fps 30 
$sequence "fidget" "animations/ld/idle1" fps 30 loop 
$sequence "holster" "animations/ld/holster" fps 30 
$sequence "draw" "animations/ld/draw" fps 30 

// End of QC script.
