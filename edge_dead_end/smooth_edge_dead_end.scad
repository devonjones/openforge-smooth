include <../floor_tile/smooth_floor.scad>

module smooth_edge_dead_end(x,y) {
  union() {
    smooth_floor(x,y,l=9.2,r=9.2,b=9.2);
    translate([0,25*y,7.5]) cube([25*x+9.2*2,9.2,41.5]);
    translate([25*x+9.2,0,7.5]) cube([9.2,25*y,41.5]);
    translate([0,0,7.5]) cube([9.2,25*y,41.5]);
  }
}

//smooth_edge_dead_end(4,4);
