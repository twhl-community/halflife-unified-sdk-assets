/*
==============================================================================

QC script generated by Half-Life MDL Decompiler 1.2 
2003, Kratisto. Based on code from Valve's HL SDK.

v_shock.mdl

Original internal name:
"v_shock.mdl"

==============================================================================
*/

$modelname "v_shock_hev_hd.mdl"
$cd "./"
$cdtexture "../../textures/viewmodel/hands/hev"
$cdtexture "../../textures/viewmodel/v_shock"
$scale 1.0


$bbox 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$cbox 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$eyeposition 0.000000 0.000000 0.000000


//reference mesh(es)
$body "body" "shock_ref"

$body "studio" "v_shock_hands_reference_hev_hd"


// 4 attachment(s)
$attachment 0 "shock_rifle_rods" 1.000000 -2.000000 1.000000
$attachment 1 "damn02" 0.000000 0.000000 0.000000
$attachment 2 "damn01" 0.000000 0.000000 0.000000
$attachment 3 "damn" 0.000000 0.000000 0.000000

// 23 hit box(es)
$hbox 0 "shock_rifle_body" -11.630000 -14.297440 -2.910000 13.110000 2.980000 11.270000
$hbox 0 "shock_rifle_rarm" -18.379999 -43.099998 -3.480000 2.760000 3.840000 4.560000
$hbox 0 "shock_rifle_larm" -2.190000 -41.099998 -4.010000 10.830000 1.860000 4.050000
$hbox 0 "shock_rifle_tarm" -2.790000 -41.860001 0.000000 2.790000 2.590000 12.390000
$hbox 0 "shock_rifle_tele1" -6.200000 -4.392133 -4.640000 6.190000 3.450000 4.660000
$hbox 0 "shock_rifle_tele2" -4.610000 -4.702464 -3.580000 4.610000 2.970000 3.610000
$hbox 0 "shock_rifle_tele3" -3.900000 -3.784872 -2.940000 3.900000 2.000000 2.970000
$hbox 0 "shock_rifle_tele4" -2.660000 -6.596070 -4.285710 2.660000 1.800000 2.190000
$hbox 0 "shock_rifle_rods" -1.040000 -7.520000 -2.230000 1.040000 7.530000 2.270000
$hbox 0 "shock_rifle_thorn" -2.450000 -5.990000 -0.340000 1.420000 0.680000 4.260000
$hbox 0 "shock_rifle_bhorn" -2.480000 -7.330000 -3.540000 2.470000 0.860000 1.080000
$hbox 0 "Hands biped L Forearm" -0.600000 -3.170000 -1.830000 17.139999 3.880000 2.880000
$hbox 0 "Hands biped L Hand" 0.000000 -1.570000 -3.190000 5.690000 1.320000 2.810000
$hbox 0 "Hands biped L Finger0" 0.000000 -1.260000 -0.830000 3.810000 0.700000 1.430000
$hbox 0 "Hands biped L Finger01" 0.000000 -0.780000 -0.720000 2.090000 0.470000 0.640000
$hbox 0 "Hands biped L Finger1" 0.000000 -1.050000 -1.020000 1.790000 0.560000 0.430000
$hbox 0 "Hands biped L Finger11" 0.000000 -1.020000 -0.900000 1.705262 0.540000 0.370000
$hbox 0 "Hands biped L Finger2" 0.000000 -0.990000 -0.760000 1.989475 0.560000 0.480000
$hbox 0 "Hands biped L Finger21" 0.000000 -1.030000 -0.760000 1.989474 0.620000 0.610000
$hbox 0 "Hands biped L Finger3" 0.000000 -1.060000 -0.680000 1.810000 0.690000 0.760000
$hbox 0 "Hands biped L Finger31" 0.000000 -1.050000 -0.690000 1.705260 0.680000 0.830000
$hbox 0 "Hands biped L Finger4" 0.000000 -1.040000 -0.450000 1.520000 0.740000 0.970000
$hbox 0 "Hands biped L Finger41" 0.000000 -0.990000 -0.570000 1.421053 0.650000 0.830000

// 5 animation sequence(s)
$sequence "idle1" "idle1" fps 30 loop 
$sequence "fire" "fire" fps 30 
$sequence "draw" "draw" fps 30 { event 5004 1 "weapons/shock_draw.wav" } 
$sequence "holster" "holster" fps 30 
$sequence "idle3" "idle3" fps 15 loop 

// End of QC script.
