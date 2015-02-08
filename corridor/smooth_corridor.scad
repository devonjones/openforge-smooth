include <../floor_tile/smooth_floor.scad>

module smooth_corridor(x,y) {
  union() {
    difference() {
      smooth_floor(x,y);
      translate([-1,25*y-9.2,7.5]) cube([25*x+2,10.2,13]);
      translate([-1,-1,7.5]) cube([25*x+2,10.2,13]);
    }
    translate([0,25*y-9.2,7.5]) cube([25*x,9.2,41.5]);
    translate([0,0,7.5]) cube([25*x,9.2,41.5]);
  }
}

//smooth_corridor(4,4);
