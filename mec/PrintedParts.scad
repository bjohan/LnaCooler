include <sub_assemblys.scad>
include <MetalParts.scad>
module spiral(){
	r=1;
	thickness=2;
	loops=10;
	linear_extrude(height=1) polygon(points= concat(
    		[for(t = [90:360*loops]) 
        		[(r-thickness+t/90)*sin(t),(r-thickness+t/90)*cos(t)]],
    		[for(t = [360*loops:-1:90]) 
        		[(r+t/90)*sin(t),(r+t/90)*cos(t)]]
        	));
}

module base_shroud(){
	difference(){
		xycube([base_shroud_x, base_shroud_y, base_shroud_z]);
		minkowski(){
		base_assembly();
		sphere(0.2);
		}
		translate_to_copper_base(){
			minkowski(){
				xycube([copper_heat_spreader_x,copper_heat_spreader_y,copper_heat_spreader_z+tec1_12710_z ]);
				sphere(0.2);
			}
			translate_to_peltier_tec1_12710()
			translate_to_copper_heat_spreader()
			minkowski(){
				aluminium_spacer();
				sphere(0.2);
			}
		}
		base_assembly_holes();
		peltier_clamp_hole_pattern();
	}
}

module chamber_wall(){
	difference(){
	translate([wall_thickness/2, 0, 0]){
		xycube([wall_length+wall_thickness, wall_thickness, wall_height]);
	}
	chamber_wall_hole_pattern();
	}
}

module chamber_wall_hole_pattern(){
	nscrew = 4;
	screwsep = wall_height/(nscrew+1);
	translate([wall_thickness/2, 0, 0]){
		for(i = [1:nscrew]) translate([wall_length/2, -wall_thickness, i*screwsep]) rotate([-90,0,0]) cylinder(100,wall_screw_radius,wall_screw_radius);
		for(i = [1:nscrew]) translate([-wall_length/2+wall_screw_depth, 0, i*screwsep]) rotate([0,-90,0]) cylinder(100,wall_screw_radius,wall_screw_radius);
	}


}

module peltier_clamp(){
		translate([0,0,-peltier_clamp_wall_thickness]){
	difference(){
			xycube([peltier_clamp_x, peltier_clamp_y, peltier_clamp_z]);
			xycube([tec4_24606_l2_x+3, tec4_24606_l2_y+3, peltier_clamp_z+1]);
			xycube([tec4_24606_l1_x+0.5, tec4_24606_l1_y+0.5, peltier_clamp_wall_thickness+tec4_24606_l1_z]);
			translate([0,0,-1]) peltier_clamp_hole_pattern();
		}
	}
	
}

module peltier_clamp_hole_pattern(){
	translate([peltier_clamp_x/2-peltier_clamp_flange_length/2,0,0])
		cylinder(100, peltier_clamp_screw_radius,peltier_clamp_screw_radius);
	translate([-(peltier_clamp_x/2-peltier_clamp_flange_length/2),0,0])
		cylinder(100, peltier_clamp_screw_radius,peltier_clamp_screw_radius);
}

