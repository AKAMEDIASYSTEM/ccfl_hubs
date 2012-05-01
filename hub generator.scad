/*
Here's a library I'm building to model parts that will let you interconnect CCFL tubes to make cool polyhedral lights.

These CCFLs have sheaths that are 11mm diameter.
The CCFL elements themselves are 3mm in diameter.

*/

//SheathRadius
sheath = 5.5; //radius of protective sheath
bareTube = 2.5; // radius of bare tube
thickness = 2.5;
ifCtr = false;
jointLen = 20;

module tetraHub(){

difference(){
hull(){
	rotate([90,0,0]) rotate([0,0,0]) difference(){
		cylinder(h=jointLen,r=bareTube+thickness, center = ifCtr);
	}

	rotate([90,0,0]) rotate([0,60,0]) difference(){
		cylinder(h=jointLen,r=bareTube+thickness, center = ifCtr);
	}

	rotate([30,30,0]) difference(){
		cylinder(h=jointLen,r=bareTube+thickness, center = ifCtr);
		}
	
}
	sphere(5);

	rotate([90,0,0]) rotate([0,0,0]) difference(){
		cylinder(h=jointLen,r=bareTube, center = ifCtr);
	}

	rotate([90,0,0]) rotate([0,60,0]) difference(){
		cylinder(h=jointLen,r=bareTube, center = ifCtr);
	}

	rotate([30,30,0]) difference(){
		cylinder(h=jointLen,r=bareTube, center = ifCtr);
		}
}


}

tetraHub();
translate([60,0,0]){
tetraHub();
}
translate([-60,0,0]){
tetraHub();
}
translate([30,60,0]){
tetraHub();
}