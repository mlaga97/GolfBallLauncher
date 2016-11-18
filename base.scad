base();

module base() {
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
			
			translate([0,-22.5/4,-10])
				cube([92.5,22.5/2,10], center=true);
			translate([0,-50-22.5/2,50-15])
				cube([92.5,100,100], center=true);
		}
		
		translate([0,0,250+30])
			cube([500,500,500],center=true);
		translate([0,-250-58,0])
			cube([500,500,500],center=true);
		
		translate([22.5+24,0,5])
				cube([22.5,22.5,20],center=true);
		translate([-22.5-24,0,5])
				cube([22.5,22.5,20],center=true);
		rotate([45,0,0])
			translate([0,0,35+500])
				cube([1000,1000,1000],center=true);
		
		cylinder(d=45, h=100, center = true);
		
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
			
		// Stand Holes
		#rotate([135,0,0]) {
			rotate([0,37.5,0]) //355
				translate([0,25,50/2+15])
					cylinder(d=8.5, h=50, center = true);
			rotate([0,-37.5,0])
				translate([0,25,50/2+15])
					cylinder(d=8.5, h=50, center = true);
		}
	}
}