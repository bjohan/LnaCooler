include <dimensions.scad>
include <aux.scad>
module copper_base(){
	color([1,0.5, 0.2])
	xycube([copper_base_x, copper_base_y, copper_base_z]);
}

module translate_to_copper_base(){
	translate([0, 0, copper_base_z]) children();
}

module copper_heat_spreader(){
	color([1, 0.5, 0.2])
	xycube([copper_heat_spreader_x, copper_heat_spreader_y, copper_heat_spreader_z]);
}


module translate_to_copper_heat_spreader(){
	translate([0, 0, copper_heat_spreader_z]) children();
}

module aluminium_spacer(){
	color([0.7, 0.7, 0.7])
	xycube([aluminium_spacer_x, aluminium_spacer_y, aluminium_spacer_z]);
}

module translate_to_aluminium_spacer(){
	translate([0, 0, aluminium_spacer_z]) children();
}


module aluminium_spacer_top(){
	color([0.7, 0.7, 0.7])
	xycube([aluminium_spacer_top_x, aluminium_spacer_top_y, aluminium_spacer_top_z]);
}

module translate_to_aluminium_spacer_top(){
	translate([0, 0, aluminium_spacer_top_z]) children();
}

module aluminium_side(){
	color([0.7, 0.7, 0.7])
	xycube([aluminium_side_x, aluminium_side_y, aluminium_side_z]);
}

//copper_base();
