include <dimensions.scad>
include <aux.scad>
module copper_base(){
	color([1,0.5, 0.2])
	xycube([copper_base_x, copper_base_y, copper_base_z]);
}

module translate_to_copper_base(){
	translate([0, 0, copper_base_z]) children();
}

//copper_base();
