//This file contains all the input dimensions


//Interface to CPU-cooler
cooler_interface_x = 40;
cooler_interface_y = 40;
cooler_interface_z = 3;
cooler_hole_pattern_x_sep=80;
cooler_hole_pattern_y_sep=80;
cooler_thread_radius = 2;

//Size of peltier
tec1_12710_x = 40;
tec1_12710_y = 40;
tec1_12710_z = 3.3;

//Dimensions of each layer
tec4_24606_l1_x = 40;
tec4_24606_l1_y = 40;
tec4_24606_l1_z = 2.95;
tec4_24606_l2_x = 30;
tec4_24606_l2_y = 30;
tec4_24606_l2_z = 2.95;
tec4_24606_l3_x = 20;
tec4_24606_l3_y = 20;
tec4_24606_l3_z = 2.95;
tec4_24606_l4_x = 15;
tec4_24606_l4_y = 15;
tec4_24606_l4_z = 2.95;

//Outer dimension of four stack
tec4_24606_x = tec4_24606_l1_x;
tec4_24606_y = tec4_24606_l1_y;
tec4_24606_z = tec4_24606_l1_z + tec4_24606_l2_z + tec4_24606_l3_z + tec4_24606_l4_z;

//Big heat spreader at bottom
copper_base_margin_y = 5;
copper_base_x = 60;
copper_base_y = tec1_12710_y*2+copper_base_margin_y;
copper_base_z = 11;

//Thinner heat spreader
copper_heat_spreader_x = tec1_12710_x+5;
copper_heat_spreader_y = tec1_12710_y*2+5;
copper_heat_spreader_z = 4;

//Large aluminium spacer
aluminium_spacer_x = tec1_12710_x;
aluminium_spacer_y = tec1_12710_y;
aluminium_spacer_z = 20;

//Small spacer at top of stack
aluminium_spacer_top_x = tec4_24606_l4_x;
aluminium_spacer_top_y = tec4_24606_l4_y;
aluminium_spacer_top_z = 20;

//Extra sides at base
aluminium_side_length = cooler_hole_pattern_x_sep + 20;
aluminium_side_x = (aluminium_side_length-copper_base_x)/2;
aluminium_side_y = aluminium_side_length;
aluminium_side_z = copper_base_z;
aluminium_side_screw_radius = 3/2;

//Main shrouhd dimensions
base_shroud_top_thickness = 5;
base_shroud_wall_thickness = 5;
base_shroud_x = aluminium_side_length+2*base_shroud_wall_thickness;
base_shroud_y = base_shroud_x; //aluminium_side_length+2*base_shroud_wall_thickness;
base_shroud_z = aluminium_side_z+tec1_12710_z+copper_heat_spreader_z+base_shroud_top_thickness;

//Cryochamber dimensions
wall_length = base_shroud_x;
wall_height = 100;
wall_thickness = 5;
wall_screw_radius = 3/2;
wall_screw_depth = 20;


peltier_clamp_flange_length = 20;
peltier_clamp_wall_thickness = 5;
peltier_clamp_x = tec1_12710_x+peltier_clamp_wall_thickness+2*peltier_clamp_flange_length;
peltier_clamp_y = tec1_12710_y+peltier_clamp_wall_thickness;
peltier_clamp_z = tec1_12710_z+peltier_clamp_wall_thickness*2;
peltier_clamp_screw_radius = 3/2;
