include <dimensions.scad>
include <aux.scad>


module cooler_hole_pattern(r, l){
    quad(cooler_hole_pattern_x_sep/2, cooler_hole_pattern_y_sep/2){
        cylinder(l,r,r);
    }
}

module cooler(){
    //The cooler interface
    color([1,0.5,0.2])
    xycube([cooler_interface_x, cooler_interface_y, cooler_interface_z]);
    
    
    //Threaded body of screws
    color([0.5, 0.5,0.5])
    cooler_hole_pattern(cooler_thread_radius, 10);
}

cooler();
