module oval(length,width,height) {
  union() {
    cube([width,length,height],center=true);
    translate([0, length/2, 0]) cylinder(r=width/2, h=height, center=true);
    translate([0, -length/2, 0]) cylinder(r=width/2, h=height, center=true);
  }
}

