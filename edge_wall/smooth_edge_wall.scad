include <../floor_tile/smooth_floor.scad>

module smooth_edge_wall(x,y) {
  union() {
    smooth_floor(x,y,b=9.2);
    translate([0,25*y,7.5]) cube([25*x,9.2,41.5]);
  }
}

//smooth_edge_wall(4,4);
