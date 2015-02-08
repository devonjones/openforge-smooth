include <../floor_tile/smooth_floor.scad>

module smooth_edge_corridor(x,y) {
  union() {
    smooth_floor(x,y,f=9.2,b=9.2);
    translate([0,25*y+9.2,7.5]) cube([25*x,9.2,41.5]);
    translate([0,0,7.5]) cube([25*x,9.2,41.5]);
  }
}

//smooth_edge_corridor(4,4);
