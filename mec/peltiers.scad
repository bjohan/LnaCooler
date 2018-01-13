include <dimensions.scad>

module peltier_tec1_12710(){
    color([1,1,1])
    xycube([tec1_12710_x, tec1_12710_y,tec1_12710_z]);
}

module translate_to_peltier_tec1_12710(){
	translate([0,0, tec1_12710_z]) children();
}


module peltier_tec4_24606()
{
    color([1,1,1]) xycube([tec4_24606_l1_x, tec4_24606_l1_y,tec4_24606_l1_z]);
    translate([0, 0, tec4_24606_l1_z]){
        color([1,1,1]) xycube([tec4_24606_l2_x, tec4_24606_l2_y,tec4_24606_l2_z]);
        translate([0, 0, tec4_24606_l2_z]){
            color([1,1,1]) xycube([tec4_24606_l3_x, tec4_24606_l3_y,tec4_24606_l3_z]);
            translate([0, 0, tec4_24606_l4_z]){
                color([1,1,1]) xycube([tec4_24606_l4_x, tec4_24606_l4_y,tec4_24606_l4_z]);
            }
        }
    }
}


module translate_to_peltier_tec424606(){
	translate([0,0, tec4_24606_z]) children();
}
