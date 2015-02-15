include <../floor_tile/smooth_floor.scad>

module smooth_edge_corridor(x,y,right_front=false,left_front=false,right_back=false,left_back=false) {
  difference() {
    union() {
      smooth_floor(x,y,f=9.2,b=9.2, negative=false);
      translate([0,25*y+9.2,7.5]) cube([25*x,9.2,41.5]);
      translate([0,0,7.5]) cube([25*x,9.2,41.5]);
    }
    if(left_front || right_front || left_back || right_back) {
      translate([0,9.2,0]) frame_square_negative(x,y);
    }
    else {
      frame_square_negative(x,y,f=9.2,b=9.2);
    }
    if(left_front) {
      translate([9.2,0,-1]) rotate([0,0,45+90]) cube([20,20,55]);
    }
    if(right_front) {
      translate([25*x-9.2,0,-1]) rotate([0,0,45]) mirror([0,1,0]) cube([20,20,55]);
    }
    if(right_back) {
      translate([25*x,25*y+9.2,-1]) rotate([0,0,45+90]) mirror([0,1,0]) cube([20,20,55]);
    }
    if(left_back) {
      translate([9.2,25*y+9.2*2,-1]) rotate([0,0,45+90]) cube([20,20,55]);
    }
  }
}

smooth_edge_corridor(2,2,right_front=true,left_front=true,right_back=true,left_back=true);
