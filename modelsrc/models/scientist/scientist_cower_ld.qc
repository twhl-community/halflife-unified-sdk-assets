$modelname "scientist_cower_ld.mdl"
$cd "./"
$cdtexture "../../textures/scientist"
$scale 1.0


$bbox -16.000000 -16.000000 0.000000 16.000000 16.000000 72.000000
$cbox 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$eyeposition 0.000000 0.000000 60.000000


//reference mesh(es)
$body "studio" "../shared/meshes/scientists/ld/SCI3_Template_Biped1(Headless_Body)"

$bodygroup "heads"
{
studio "../shared/meshes/scientists/ld/SCI3_Template_Biped1(NerdHead)"
studio "../shared/meshes/scientists/ld/SCI2_Template_Biped1(EinstienHead)"
studio "../shared/meshes/scientists/ld/SCI3_Template_Biped1(LutherHead)"
studio "../shared/meshes/scientists/ld/SCI3_Template_Biped1(SlickHead)"
}

$bodygroup "needle"
{
blank
studio "../shared/meshes/scientists/ld/SCI2_Template_Biped(Needle_Hand)1"
}

$bodygroup "items"
{
blank
studio "../shared/meshes/scientists/ld/SCI_clipboard"
studio "../shared/meshes/scientists/ld/SCI_stick"
}

// 2 skin families
$texturegroup skinfamilies 
{
{ "Sci2_Hand1.bmp"  "Sci2_Knuckles.bmp" }
{ "Sci2_Hand(Black)1.bmp"  "Sci2_Knuckles(Blk).bmp" }
}

// 2 bone controller(s)
$controller 0 "Bip02 Head" XR -60.000000 60.000000
$controller 1 "Bip02 Head" ZR -50.000000 30.000000
$controller 4 "Bone01" ZR 0.000000 20.000000

$include "../shared/includes/hitboxes/scientists/ld/hitboxes.qci"


// 1 animation sequence(s)

// scientist_cower.mdl sequences
$include "../shared/includes/animations/scientists/ld/cower_die.qci"

// End of QC script.
