/*

RepRapPro Huxley PCB Clips and Power connector clip

Adrian Bowyer

10 December 2011

Licence: GPL
*/

union()
{
	power_clip();
	
	translate([40,6,0])
	pcb_clip();
	
	translate([40,24,0])
	pcb_clip();
	
	translate([14,28,0])
	mirror([1,0,0])
	pcb_clip();
	
	translate([14,46,0])
	mirror([1,0,0])
	pcb_clip();
}

module power_clip()
{
	translate([-5,-14,14])
	rotate([0,90,0])
	difference()
	{
		translate([4,24,20])
			difference()
			{
				cube([20,20,30], center=true);
				translate([-3,3,13])
					cube([20,20,30], center=true);
				translate([-17,5,0])
					rotate([0,0,60])
						cube([30,20,30], center=true);
				translate([0,2,7])
					rotate([0,90,0])
						cylinder(r=4,h=14,$fn=20);
			}
	
		import_stl("../stl/frame-vertex-foot.stl");
		
		translate([-2.1,20.8,5])
			cylinder(r=1.7,h=20,$fn=20);
		
		translate([-2.1,20.8,-1])
			cylinder(r=3.4,h=15,$fn=20);
	}
}


module pcb_clip()
{
	difference()
	{
		union()
		{
			translate([7,0,6])
				cube([14,12,12], center=true);
			translate([7,5,3])
				cube([14,10,6], center=true);
			cylinder(r=6,h=12,$fn=30);
		}
		translate([0,0,-1])
			cylinder(r=2.9,h=14,$fn=20);
		translate([12,0,7])
			cube([24,5.4,14], center=true);
		translate([7,7,6])
			cube([14,2,6], center=true);
	}
}

