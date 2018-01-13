include <MetalParts.scad>
include <peltiers.scad>

copper_base();
translate_to_copper_base(){
	translate([0, tec1_12710_y/2+copper_base_margin_y/4, 0])
		peltier_tec1_12710();
	translate([0, -tec1_12710_y/2-copper_base_margin_y/4, 0])
		peltier_tec1_12710();
}

