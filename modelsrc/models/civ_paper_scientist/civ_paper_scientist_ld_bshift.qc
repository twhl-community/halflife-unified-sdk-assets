/*
==============================================================================

QC script generated by Half-Life MDL Decompiler 1.2 
2003, Kratisto. Based on code from Valve's HL SDK.

scientist.mdl

Original internal name:
"scientist.mdl"

==============================================================================
*/

$modelname "civ_paper_scientist_ld_bshift.mdl"
$cd "./"
$cdtexture "../../textures/civ_scientist"
$cdtexture "../../textures/scientist"
$scale 1.0


$bbox -16.000000 -16.000000 0.000000 16.000000 16.000000 72.000000
$cbox 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$eyeposition 0.000000 0.000000 60.000000


//reference mesh(es)
$body "studio" "../shared/meshes/scientists/ld/bshift/sci3_template_biped1(headless_body)"

$bodygroup "heads"
{
studio "../shared/meshes/scientists/ld/bshift/sci3_template_biped1(NERDHEAD)"
studio "../shared/meshes/scientists/ld/bshift/SCI2_Template_Biped1(EinstienHead)"
studio "../shared/meshes/scientists/ld/bshift/sci3_template_biped1(LUTHERHEAD)"
studio "../shared/meshes/scientists/ld/bshift/SCI3_Template_Biped1(SlickHead)"
}

$body "newspaper" "../shared/meshes/civ_scientists/ld/bshift/SCI_newspaper"

// 2 skin families
$texturegroup skinfamilies 
{
{ "Sci2_Hand1.BMP"  "Sci2_Knuckles.BMP" }
{ "Sci2_Hand(Black)1.bmp"  "Sci2_Knuckles(Blk).bmp" }
}

// 2 bone controller(s)
$controller 0 "Bip02 Head" XR -60.000000 60.000000
$controller 1 "Bip02 Head" ZR -50.000000 30.000000
$controller 4 "Bone01" ZR 0.000000 16.000000

// 19 hit box(es)
$hbox 6 "Bip02 L Leg" 0.000000 -5.690000 -3.550000 18.709999 3.610000 3.430000
$hbox 6 "Bip02 L Leg1" -1.000000 -3.770000 -2.970000 15.959999 2.210000 2.410000
$hbox 6 "Bip02 L Foot" -0.070000 -2.290000 -2.140000 3.620000 8.170000 2.450000
$hbox 7 "Bip02 R Leg" 0.000000 -5.960000 -3.770000 18.639999 3.580000 3.390000
$hbox 7 "Bip02 R Leg1" -1.000000 -3.850000 -2.580000 15.969999 2.160000 2.980000
$hbox 7 "Bip02 R Foot" -0.110000 -2.290000 -2.380000 3.610000 8.170000 1.990000
$hbox 3 "Bip02 Pelvis" -6.670000 -4.400000 -6.460000 5.120000 5.170000 6.830000
$hbox 3 "Bip02 Spine" 0.000000 -3.290000 -6.830000 5.320000 5.000000 6.910000
$hbox 2 "Bip02 Spine1" 2.000000 -3.900000 -6.200000 7.700000 5.670000 5.910000
$hbox 2 "Bip02 Spine2" 3.000000 -3.650000 -5.970000 10.990000 4.930000 5.440000
$hbox 4 "Bip02 L Arm" 0.000000 -3.170000 -1.870000 5.470000 2.950000 1.580000
$hbox 4 "Bip02 L Arm1" 0.000000 -2.400000 -1.950000 12.950000 3.060000 2.460000
$hbox 4 "Bip02 L Arm2" 0.000000 -1.880000 -2.280000 11.550000 3.100000 1.700000
$hbox 4 "Bip02 L Hand" 1.000000 -1.640000 -1.960000 5.120000 1.790000 1.770000
$hbox 5 "Bip02 R Arm" 0.000000 -3.080000 -1.440000 5.890000 2.970000 2.450000
$hbox 5 "Bip02 R Arm1" 0.000000 -2.350000 -2.710000 12.920000 3.400000 2.110000
$hbox 5 "Bip02 R Arm2" 0.000000 -1.950000 -1.970000 11.250000 3.220000 2.450000
$hbox 5 "Bip02 R Hand" 1.000000 -1.850000 -1.770000 4.930000 1.590000 2.080000
$hbox 1 "Bip02 Head" -1.000000 -2.960000 -3.860000 9.020000 6.230000 4.070000


// 3 animation sequence(s)
$sequence "idle1" "../shared/animations/civ_scientists/ld/bshift/paper_idle1" fps 12 loop ACT_IDLE 30 
$sequence "idle2" "../shared/animations/civ_scientists/ld/bshift/paper_idle2" fps 12 loop ACT_IDLE 2 
$sequence "idle3" "../shared/animations/civ_scientists/ld/bshift/paper_idle3" fps 8 loop ACT_IDLE 1 

// End of QC script.
