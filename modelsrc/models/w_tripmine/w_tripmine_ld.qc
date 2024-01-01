$modelname "w_tripmine_ld.mdl"
$cd "./"
$include "includes/common/ld/common.qci"

$body "studio" "meshes/ld/tripmine_boned_world"

$hbox 0 "Dummy22" -11.440000 -3.910000 -4.220000 11.460000 7.320000 5.430000

$sequence "world" "animations/ld/world" fps 30 loop 
$sequence "ground" "animations/ld/ground" fps 30 loop 
