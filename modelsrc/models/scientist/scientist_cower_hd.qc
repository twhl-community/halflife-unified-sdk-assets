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

$include "../shared/includes/hitboxes/scientists/hd/hitboxes.qci"


// 1 animation sequence(s)

// scientist_cower.mdl sequences
$include "../shared/includes/animations/scientists/hd/cower_die.qci"

// End of QC script.
