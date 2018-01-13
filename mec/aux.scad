
module quad(x, y){
    translate([x, y, 0])
        children();
    translate([x, -y, 0])
        children();
    translate([-x, y, 0])
        children();
    translate([-x, -y, 0])
        children();
}

module xycube(v){
	translate([-v[0]/2, -v[1]/2, 0])
		cube(v);
}

