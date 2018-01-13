include <MetalParts.scad>
include <peltiers.scad>
include <CoolerInterface.scad>

cooler();
translate_to_cooler(){
	copper_base();
	translate_to_copper_base(){
		translate([0, tec1_12710_y/2+copper_base_margin_y/4, 0])
			peltier_tec1_12710();
		translate([0, -tec1_12710_y/2-copper_base_margin_y/4, 0])
			peltier_tec1_12710();
		translate_to_peltier_tec1_12710(){
			copper_heat_spreader();
			translate_to_copper_heat_spreader(){
				peltier_tec1_12710();
				translate_to_peltier_tec1_12710(){
					aluminium_spacer();
					translate_to_aluminium_spacer(){
						peltier_tec4_24606();
						translate_to_peltier_tec424606(){
							aluminium_spacer_top();
						}
					}
				}
			}
		}
	}
	translate([copper_base_x/2+aluminium_side_x/2, 0, 0])
		aluminium_side();
	translate([-copper_base_x/2-aluminium_side_x/2, 0, 0])
		aluminium_side();
}

