include <MetalParts.scad>
include <CoolerInterface.scad>
module base_assembly(){
	difference(){
		union(){
		translate([copper_base_x/2+aluminium_side_x/2, 0, 0])
			aluminium_side();
		translate([-copper_base_x/2-aluminium_side_x/2, 0, 0])
			aluminium_side();
		}
		base_assembly_holes();
	}
	copper_base();
	//base_assembly_holes();
}

module base_assembly_holes(){
	dist_x = copper_base_x/2+aluminium_side_x/2;
	length = base_shroud_z;
	translate([dist_x, -aluminium_side_y/3,0])
		cylinder(length, aluminium_side_screw_radius,aluminium_side_screw_radius);
	translate([dist_x, 0,0])
		cylinder(length, aluminium_side_screw_radius,aluminium_side_screw_radius);
	translate([dist_x, aluminium_side_y/3,0])
		cylinder(length, aluminium_side_screw_radius,aluminium_side_screw_radius);
	translate([-dist_x, -aluminium_side_y/3,0])
		cylinder(length, aluminium_side_screw_radius,aluminium_side_screw_radius);
	translate([-dist_x, 0,0])
		cylinder(length, aluminium_side_screw_radius,aluminium_side_screw_radius);
	translate([-dist_x, aluminium_side_y/3,0])
		cylinder(length, aluminium_side_screw_radius,aluminium_side_screw_radius);
}

module cryo_chamber_walls(){
	translate([0, base_shroud_y/2+wall_thickness/2, 0]) chamber_wall();
	rotate([0,0,90]) translate([0, base_shroud_y/2+wall_thickness/2, 0]) chamber_wall();
	//rotate([0,0,180]) translate([0, base_shroud_y/2+wall_thickness/2, 0]) chamber_wall();
	//rotate([0,0,270]) translate([0, base_shroud_y/2+wall_thickness/2, 0]) chamber_wall();
}

