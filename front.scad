front();

module front() {
	difference() {
		union() {
			cylinder(d=75, h=30, center=true);
			
			hull() {
				translate([35,0,0])
					cylinder(d=22.5, h=30, center = true);
				translate([-35,0,0])
					cylinder(d=22.5, h=30, center = true);
			}
			
			hull() {
				translate([0,35,0])
					cylinder(d=15, h=30, center = true);
				translate([0,-35,0])
					cylinder(d=15, h=30, center = true);
			}
		}
		
		cylinder(d=45, h=45, center = true);
		
		// 10mm Rod Holes
		translate([35,0,0])
			cylinder(d=12, h=30+0.1, center = true);
		translate([-35,0,0])
			cylinder(d=12, h=30+0.1, center = true);
		
		// 8mm Rod Holes
		translate([0,35,-5])
			cylinder(d=8.5, h=30, center = true);
		translate([0,-35,-5])
			cylinder(d=8.5, h=30, center = true);
		
		// Nut Holes
		translate([35,0,-5])
			cylinder(d=22.5, h=20, center = false);
		translate([-35,0,-5])
			cylinder(d=22.5, h=20, center = false);
		
		// Spring Notches
		rotate([0,0,45]) {
			translate([26,0,0])
				cube([4,11,50], center=true);
			translate([35,0,-4])
				cube([20,11,17.5], center=true);
		}
		rotate([0,0,135]) {
			translate([26,0,0])
				cube([4,11,50], center=true);
			translate([35,0,-4])
				cube([20,11,17.5], center=true);
		}
		rotate([0,0,225]) {
			translate([26,0,0])
				cube([4,11,50], center=true);
			translate([35,0,-4])
				cube([20,11,17.5], center=true);
		}
		rotate([0,0,-45]) {
			translate([26,0,0])
				cube([4,11,50], center=true);
			translate([35,0,-4])
				cube([20,11,17.5], center=true);
		}
	
		// Cap Mount Holes
		rotate([90,0,-22.5])
			translate([0,0,25])
				cylinder(d=3, h=30, center = false);
		rotate([90,0,22.5])
			translate([0,0,25])
				cylinder(d=3, h=30, center = false);
		rotate([90,0,-22.5+180])
			translate([0,0,25])
				cylinder(d=3, h=30, center = false);
		rotate([90,0,22.5+180])
			translate([0,0,25])
				cylinder(d=3, h=30, center = false);
		
		// Reinforcement Holes
		rotate([0,0,45]) {
			rotate([0,0,15])
				translate([33,0,0])
					cylinder(d=3, h=30+0.1, center = true);
			rotate([0,0,-15])
				translate([33,0,0])
					cylinder(d=3, h=30+0.1, center = true);
		}
		rotate([0,0,-45]) {
			rotate([0,0,15])
				translate([33,0,0])
					cylinder(d=3, h=30+0.1, center = true);
			rotate([0,0,-15])
				translate([33,0,0])
					cylinder(d=3, h=30+0.1, center = true);
		}
		rotate([0,0,135]) {
			rotate([0,0,15])
				translate([33,0,0])
					cylinder(d=3, h=30+0.1, center = true);
			rotate([0,0,-15])
				translate([33,0,0])
					cylinder(d=3, h=30+0.1, center = true);
		}
		rotate([0,0,-135]) {
			rotate([0,0,15])
				translate([33,0,0])
					cylinder(d=3, h=30+0.1, center = true);
			rotate([0,0,-15])
				translate([33,0,0])
					cylinder(d=3, h=30+0.1, center = true);
		}
	}
}