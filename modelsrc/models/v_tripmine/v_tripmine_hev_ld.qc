/*
==============================================================================

QC script generated by Half-Life MDL Decompiler 1.2 
2003, Kratisto. Based on code from Valve's HL SDK.

v_tripmine.mdl

Original internal name:
"valve/models/v_tripmine.mdl"

==============================================================================
*/

$modelname "v_tripmine_hev_ld.mdl"
$cd "./"
$cdtexture "meshes/ld"
$cdtexture "../../textures/viewmodel/hands/hev"
$cdtexture "../../textures/w_tripmine"
$scale 1.0


$bbox 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$cbox 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$eyeposition 0.000000 0.000000 0.000000


//reference mesh(es)
$bodygroup "hands"
{
studio "meshes/ld/v_gordon_hands_reference"
}

$bodygroup "mine"
{
studio "meshes/ld/tripmine_mine"
}


// 5 hit box(es)
$hbox 0 "Bip01 L Arm2" 0.000000 -1.770000 -1.570000 11.680000 1.030000 2.620000
$hbox 0 "Bip01 L Hand" -0.070000 -0.870000 -1.950000 3.890000 1.030000 1.700000
$hbox 0 "Bip01 R Arm2" 0.000000 -1.770000 -2.590000 11.368423 1.000000 1.570000
$hbox 0 "Bip01 R Hand" -0.070000 -0.870000 -1.790000 3.890000 1.030000 1.950000

// 9 animation sequence(s)
$sequence "idle1" "animations/ld/idle1" fps 30 loop 
$sequence "idle2" "animations/ld/idle2" fps 30 loop 
$sequence "arm1" "animations/ld/arm1" fps 60 
$sequence "place" "animations/ld/place" fps 30 
$sequence "fidget" "animations/ld/fidget" fps 30 loop 
$sequence "holster" "animations/ld/holster" fps 30 
$sequence "draw" "animations/ld/draw" fps 30 

// End of QC script.
