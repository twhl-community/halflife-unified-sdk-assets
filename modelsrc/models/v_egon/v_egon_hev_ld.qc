/*
==============================================================================

QC script generated by Half-Life MDL Decompiler 1.2 
2003, Kratisto. Based on code from Valve's HL SDK.

v_egon.mdl

Original internal name:
"valve/models/v_egon.mdl"

==============================================================================
*/

$modelname "v_egon_hev_ld.mdl"
$cd "./"
$cdtexture "../../textures/viewmodel/hands/hev"
$cdtexture "../../textures/viewmodel/v_egon"
$scale 1.0


$bbox 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$cbox 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$eyeposition 0.000000 0.000000 0.000000


//reference mesh(es)
$body "body" "meshes/ld/egon_newgun"

$body "body" "meshes/ld/v_gordon_hands_reference"


// 1 attachment(s)
$attachment 0 "Gauss" -10.000000 2.500000 0.000000

// 3 hit box(es)
$hbox 0 "Gauss" -13.730000 -1.270000 -6.190000 2.140000 3.620000 9.780000
$hbox 0 "Bip01 L Arm2" 0.000000 -2.800000 -1.730000 11.680000 3.020000 4.000000
$hbox 0 "Bip01 L Hand" 0.000000 -0.870000 -1.940000 3.890000 1.030000 1.790000

// 11 animation sequence(s)
$sequence "idle1" "animations/ld/idle1" fps 30 loop 
$sequence "fidget1" "animations/ld/fidget1" fps 30 
$sequence "altfireon" "animations/ld/altfireon" fps 30 
$sequence "altfirecycle" "animations/ld/altfirecycle" fps 30 loop 
$sequence "altfireoff" "animations/ld/altfireoff" fps 30 
$sequence "fire1" "animations/ld/fire1" fps 30 loop 
$sequence "fire2" "animations/ld/fire2" fps 30 loop 
$sequence "fire3" "animations/ld/fire3" fps 30 loop 
$sequence "fire4" "animations/ld/fire4" fps 30 loop 
$sequence "draw" "animations/ld/draw" fps 30 
$sequence "holster" "animations/ld/holster" fps 30 

// End of QC script.
