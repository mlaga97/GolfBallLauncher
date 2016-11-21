module rods() {
	translate([35,0,0])
		cylinder(d=10, h=380, center=true);
	translate([-35,0,0])
		cylinder(d=10, h=380, center=true);
	translate([0,35,0])
		cylinder(d=8, h=397.5, center=true);
	translate([0,-35,0])
		cylinder(d=8, h=397.5, center=true);
}

module base_rods() {
	rotate([45,0,0]) {
		rotate([0,37.5,0])
			translate([0,-25,355/2+15])
				cylinder(d=8.5, h=355, center = true);
		rotate([0,-37.5,0])
			translate([0,-25,355/2+15])
				cylinder(d=8.5, h=355, center = true);
	}
}

module springs() {
	rotate([0,0,45])
		translate([25,-5,-20])
			cube([0.2,10,length], center=false);
	rotate([0,0,-45])
		translate([25,-5,-20])
			cube([0.2,10,length], center=false);
	rotate([0,0,135])
		translate([25,-5,-20])
			cube([0.2,10,length], center=false);
	rotate([0,0,-135])
		translate([25,-5,-20])
			cube([0.2,10,length], center=false);
}