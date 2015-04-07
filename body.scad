$fs=0.1;
include <./lib/stephans.scad>;
// dna40 measurements: 20.5x33x9 board thickness: 2

/*color([0.3,0.3,0.3,0.6])*/
difference() {
  oval(40,26.5,80);
  /*translate([0,0,1]) oval(28,21,13);*/
  translate([0,20,-3]) cylinder(r=9, h=76, center=true);
  translate([0,0,23]) union() {
    cube([18.5,9,35], center=true);
    cube([20.5,2,35], center=true);
  }
  translate([0,-20,-1]) cylinder(r=11.75, h=104, center=true);
  translate([11,-25,10]) cube([200,25,40],center=true);
}

