frontcap();

module frontcap() {
	difference() {
		union() {
			cylinder(d=80, h=30, center=true);
			
			hull() {
				translate([0,35,0])
					cylinder(d=20, h=30, center = true);
				translate([0,-35,0])
					cylinder(d=20, h=30, center = true);
			}
			
			intersection() {
				rotate([0,0,45])
					cube([20,100,30], center = true);
				cylinder(d=85, h=30, center=true);
			}
			intersection() {
				rotate([0,0,-45])
					cube([20,100,30], center = true);
				cylinder(d=85, h=30, center=true);
			}
		}
		
		
		cylinder(d=75+1, h=30+0.1, center=true);
		
		hull() {
			translate([0,35,0])
				cylinder(d=15+1, h=30+0.1, center = true);
			translate([0,-35,0])
				cylinder(d=15+1, h=30+0.1, center = true);
		}
			
		rotate([0,0,45])
			cube([11,80,30+0.1], center = true);
		rotate([0,0,-45])
			cube([11,80,30+0.1], center = true);
		
		translate([0,0,10])
			cube([100,20,30+0.1], center = true);
		translate([0,0,20])
			cube([100,23,30+0.1], center = true);
		
		rotate([90,0,22.5])
			cylinder(d=4, h=100, center = true);
	}
}