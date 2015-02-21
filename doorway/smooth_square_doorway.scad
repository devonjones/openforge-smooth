include <../floor_tile/smooth_floor.scad>

module smooth_square_doorway(x,y) {
  difference() {
    union() {
      smooth_floor(x,y);
      difference() {
        translate([0,25*y-9.2,7.5]) cube([25*x,9.2,41.5]);
        square_2x_doorway(y,0);
      }
    }
    2x_doorway_hinge(y,0);
  }
}

//smooth_square_doorway(2,2);
//translate([0,0,4]) rotate([180,0,0]) door_tab(y);
