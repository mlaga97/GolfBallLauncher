foot();

module foot() {
	difference() {
		hull() {
			translate([0,0,10])
				rotate([90,0,0])
					cylinder(d=8.5, h=15);
			cube([30,30,5], center=true);
		}
		translate([0,0,7.5])
			rotate([90,0,0])
				cylinder(d=8.5, h=30);
	}
}