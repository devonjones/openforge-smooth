include <../floor_tile/smooth_floor.scad>

module smooth_edge_wall(x,y,right=false,left=false) {
  difference() {
    union() {
      smooth_floor(x,y,b=9.2,negative=false);
      translate([0,25*y,7.5]) cube([25*x,9.2,41.5]);
    }
    if(left || right) {
      frame_square_negative(x,y);
    }
    else {
      frame_square_negative(x,y,b=9.2);
    }
    if(left) {
      translate([0,25*y,-1]) rotate([0,0,45]) cube([20,20,55]);
    }
    if(right) {
      translate([25*x,25*y,-1]) rotate([0,0,45]) cube([20,20,55]);
    }
  }
}

//smooth_edge_wall(2,2,right=true,left=false);
