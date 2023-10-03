$modelname "scientist_cower_hd.mdl"
$cd "./"
$cdtexture "../../textures/scientist"
$scale 1.0


$bbox -16.000000 -16.000000 0.000000 16.000000 16.000000 72.000000
$cbox 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$eyeposition 0.000000 0.000000 60.000000


//reference mesh(es)
$body "studio" "../shared/meshes/scientists/hd/dc_sci_(headless_body)"

$bodygroup "heads"
{
studio "../shared/meshes/scientists/hd/dc_sci_(head_NERD)"
studio "../shared/meshes/scientists/hd/dc_sci_(head_EINSTEIN)"
studio "../shared/meshes/scientists/hd/dc_sci_(head_LUTHER)"
studio "../shared/meshes/scientists/hd/dc_sci_(head_SLICK)"
}

$bodygroup "needle"
{
blank
studio "../shared/meshes/scientists/hd/scientist_needle"
}

$bodygroup "items"
{
blank
studio "../shared/meshes/scientists/hd/SCI_clipboard"
studio "../shared/meshes/scientists/hd/SCI_stick"
}

// 2 skin families
$texturegroup skinfamilies 
{
{ "DC_sci_hands.BMP" }
{ "DC_sci_hands_black.bmp" }
}

// 2 bone controller(s)
$controller 0 "Bip02 Head" XR -60.000000 60.000000
$controller 1 "Bip02 Head" ZR -50.000000 30.000000
$controller 4 "Bone01" ZR 0.000000 16.000000

// 19 hit box(es)
$hbox 6 "Bip02 L Leg" 0.000000 -4.200000 -3.300000 21.000000 3.600000 3.200000
$hbox 6 "Bip02 L Leg1" 0.000000 -3.770000 -3.200000 15.959999 3.000000 2.800000
$hbox 6 "Bip02 L Foot" 0.000000 -2.800000 -2.100000 3.600000 8.000000 2.400000
$hbox 7 "Bip02 R Leg" 0.000000 -4.200000 -3.200000 21.000000 3.600000 3.300000
$hbox 7 "Bip02 R Leg1" 0.000000 -3.770000 -2.800000 15.959999 3.000000 3.200000
$hbox 7 "Bip02 R Foot" 0.000000 -2.800000 -2.400000 3.600000 8.000000 2.100000
$hbox 3 "Bip02 Pelvis" -6.600000 -4.800000 -6.400000 5.120000 5.170000 6.400000
$hbox 3 "Bip02 Spine" 0.000000 -4.200000 -6.500000 4.320000 5.000000 6.500000
$hbox 2 "Bip02 Spine1" 0.000000 -3.900000 -6.200000 6.500000 5.670000 6.200000
$hbox 2 "Bip02 Spine2" 0.000000 -4.650000 -6.200000 5.200000 4.930000 6.200000
$hbox 2 "Bip02 Spine3" -1.000000 -4.650000 -6.200000 2.990000 4.400000 6.200000
$hbox 2 "Bip02 Spine3" 2.300000 -3.650000 -2.500000 5.600000 1.000000 2.500000
$hbox 4 "Bip02 L Arm" 0.000000 -3.170000 -2.450000 5.470000 2.950000 1.580000
$hbox 4 "Bip02 L Arm1" 0.000000 -2.800000 -2.400000 12.950000 3.060000 2.000000
$hbox 4 "Bip02 L Arm2" 0.000000 -2.300000 -2.280000 9.800000 3.200000 2.000000
$hbox 4 "Bip02 L Hand" -1.000000 -1.200000 -1.100000 3.100000 0.700000 2.000000
$hbox 4 "Bip02 L Finger0" -0.200000 -0.450000 -0.450000 0.650000 0.400000 0.600000
$hbox 4 "Bip02 L Finger01" -0.200000 -0.400000 -0.450000 1.150000 0.400000 0.600000
$hbox 4 "Bip02 L Finger2" -0.500000 -1.100000 -1.000000 0.900000 -0.100000 2.000000
$hbox 4 "Bip02 L Finger21" -0.700000 -0.900000 -1.000000 1.000000 0.200000 1.800000
$hbox 5 "Bip02 R Arm" 0.000000 -3.080000 -1.440000 5.890000 2.970000 2.450000
$hbox 5 "Bip02 R Arm1" 0.000000 -2.900000 -2.000000 12.920000 3.100000 2.110000
$hbox 5 "Bip02 R Arm2" 0.000000 -2.300000 -2.000000 9.800000 3.200000 2.280000
$hbox 5 "Bip02 R Hand" -1.000000 -0.900000 -2.000000 3.100000 1.000000 1.100000
$hbox 5 "Bip02 R Finger0" -0.200000 -0.050000 -0.600000 0.650000 0.800000 0.450000
$hbox 5 "Bip02 R Finger01" -0.200000 0.000000 -0.600000 1.150000 0.800000 0.450000
$hbox 5 "Bip02 R Finger2" -0.500000 -0.700000 -2.000000 0.900000 0.300000 1.000000
$hbox 5 "Bip02 R Finger21" -0.700000 -0.500000 -1.800000 1.000000 0.600000 1.000000
$hbox 1 "Bip02 Head" -1.000000 -2.600000 -3.600000 8.700000 6.600000 3.800000
$hbox 1 "Bip02 Neck" -2.200000 -1.400000 -2.400000 2.500000 4.000000 2.500000


// 1 animation sequence(s)

// scientist_cower.mdl sequences
$sequence "cower_die" "../shared/animations/scientists/hd/cower_die" fps 25 loop { event 1000 0 } 

// End of QC script.
