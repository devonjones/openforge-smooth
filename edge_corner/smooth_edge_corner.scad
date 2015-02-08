include <../floor_tile/smooth_floor.scad>

module smooth_edge_corner(x,y) {
  union() {
    smooth_floor(x,y,r=9.2,b=9.2);
    translate([0,25*y,7.5]) cube([25*x,9.2,41.5]);
    translate([25*x,0,7.5]) cube([9.2,25*y+9.2,41.5]);
  }
}

//smooth_edge_corner(2,2);
