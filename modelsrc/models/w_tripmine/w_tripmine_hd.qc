$modelname "w_tripmine_hd.mdl"
$cd "./"
$include "includes/common/ld/common.qci"

$body "studio" "meshes/hd/w_tripmine_Reference"

$hbox 0 "tripmine" -11.140000 -3.790000 -8.170000 11.190000 7.180000 1.980000

$sequence "world" "animations/hd/world" fps 30 loop 
$sequence "ground" "animations/hd/ground" fps 30 loop 
