cart();

module cart() {
	difference() {
		union() {
			translate([0,0,-12.5])	
			cylinder(d=50, h=10, center=true);
			
			hull() {
				translate([35,0,0])
					cylinder(d=22.5, h=35, center = true);
				translate([-35,0,0])
					cylinder(d=22.5, h=35, center = true);
			}
			
			hull() {
				translate([0,35,0])
					cylinder(d=15, h=35, center = true);
				translate([0,-35,0])
					cylinder(d=15, h=35, center = true);
			}
		}
		
		translate([0,0,12.5+1])
			cube([100, 30, 10], center = true);
		
		cylinder(d=3, h=50+0.1, center = true);
		
		rotate([0,0,45-12])
			translate([0,20,-12.5])
				cylinder(d=3, h=10+0.1, center = true);
		rotate([0,0,45+12])
			translate([0,20,-12.5])
				cylinder(d=3, h=10+0.1, center = true);
		rotate([0,0,45-12+90])
			translate([0,20,-12.5])
				cylinder(d=3, h=10+0.1, center = true);
		rotate([0,0,45+12+90])
			translate([0,20,-12.5])
				cylinder(d=3, h=10+0.1, center = true);
		rotate([0,0,45-12-90])
			translate([0,20,-12.5])
				cylinder(d=3, h=10+0.1, center = true);
		rotate([0,0,45+12-90])
			translate([0,20,-12.5])
				cylinder(d=3, h=10+0.1, center = true);
		rotate([0,0,45-12+180])
			translate([0,20,-12.5])
				cylinder(d=3, h=10+0.1, center = true);
		rotate([0,0,45+12+180])
			translate([0,20,-12.5])
				cylinder(d=3, h=10+0.1, center = true);
		
		translate([0,0,10]) {
			cylinder(d=45, h=45);
			sphere(d=45);
		}
		
		translate([35,0,0])
			cylinder(d=14, h=50+0.1, center = true);
		translate([-35,0,0])
			cylinder(d=14, h=50+0.1, center = true);
		translate([0,35,0])
			cylinder(d=10, h=50+0.1, center = true);
		translate([0,-35,0])
			cylinder(d=10, h=50+0.1, center = true);
		
		translate([0,0,-12.5])
			rotate([90,0,45])
				translate([0,0,5])
					cylinder(d=3, h=100, center=false);
		translate([0,0,-12.5])
			rotate([90,0,-45])
				translate([0,0,5])
					cylinder(d=3, h=100, center=false);
		translate([0,0,-12.5])
			rotate([-90,0,45])
				translate([0,0,5])
					cylinder(d=3, h=100, center=false);
		translate([0,0,-12.5])
			rotate([-90,0,-45])
				translate([0,0,5])
					cylinder(d=3, h=100, center=false);
	}
}