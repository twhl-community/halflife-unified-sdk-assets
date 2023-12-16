$modelname "scientist_cower_ld.mdl"
$cd "./"
$cdtexture "../../textures/scientist"
$scale 1.0


$bbox -16.000000 -16.000000 0.000000 16.000000 16.000000 72.000000
$cbox 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$eyeposition 0.000000 0.000000 60.000000


//reference mesh(es)
$include "../shared/includes/bodygroups/scientists/ld/body.qci"
$include "../shared/includes/bodygroups/scientists/ld/heads.qci"
$include "../shared/includes/bodygroups/scientists/ld/needle.qci"
$include "../shared/includes/bodygroups/scientists/ld/items.qci"

// 2 skin families
$texturegroup skinfamilies 
{
{ "Sci2_Hand1.bmp"  "Sci2_Knuckles.bmp" }
{ "Sci2_Hand(Black)1.bmp"  "Sci2_Knuckles(Blk).bmp" }
}

$include "../shared/includes/bonecontrollers/scientists/ld/bonecontrollers.qci"

$include "../shared/includes/hitboxes/scientists/ld/hitboxes.qci"


// 1 animation sequence(s)

// scientist_cower.mdl sequences
$include "../shared/includes/animations/scientists/ld/cower_die.qci"

// End of QC script.
