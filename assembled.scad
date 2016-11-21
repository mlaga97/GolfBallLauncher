use <base.scad>;
use <cap.scad>;
use <cart.scad>;
use <foot.scad>;
use <front.scad>;
use <reinforcer.scad>;
use <rods.scad>;


// Use drawn_back to choose how far back to render the cart
assembly( drawn_back = 150 );



module assembly() {
	rotate([45,0,0]) {
		translate([0,0,-10])
			color([224/255, 223/255, 219/255])
				rods();
		color([50/255, 70/255, 200/255])
			translate([0,0,80-250+350]) {
				import("STLs/front.stl");
				translate([0,0,0])
					mirror([0,0,1])
						import("STLs/cap.stl");
			}
		translate([0,0,80-250+326-10.5-drawn_back]) {
			color([224/255, 223/255, 219/255])
				springs(length=drawn_back+50);
			color([50/255, 70/255, 200/255])
				import("STLs/cart.stl");
		}
		translate([0,0,50-250]) {
			color([224/255, 223/255, 219/255])
				base_rods();
			color([50/255, 70/255, 200/255])
				mirror([0,0,1])
					import("STLs/base.stl");
		}
	}
}