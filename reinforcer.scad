frontreinforcement();

module frontreinforcement() {
	difference() {
		hull() {
			translate([17/2,0,0])
				cylinder(d=7, h=7.5, center = true);
			translate([-17/2,0,0])
				cylinder(d=7, h=7.5, center = true);
		}
		
		
		translate([17/2,0,0])
			cylinder(d=3.8, h=10.1, center = true);
		translate([-17/2,0,0])
			cylinder(d=3.8, h=10.1, center = true);
	}
}

module frontReinforcementWithSwitch() {
	difference() {
		hull() {
			translate([17/2,0,0])
				cylinder(d=10, h=20, center = true);
			translate([-17/2,0,0])
				cylinder(d=7, h=20, center = true);
		}
		
		
		translate([17/2,0,0])
			cylinder(d=3.8, h=20.1, center = true);
		translate([-17/2,0,0])
			cylinder(d=3.8, h=20.1, center = true);
		
		#rotate([90,0,0]) {
			translate([17/2,-5,0])
				rotate([0,45,0])
					cylinder(d=3, h=15);
			translate([17/2,5,0])
				rotate([0,45,0])
					cylinder(d=3, h=15);
		}
	}
}