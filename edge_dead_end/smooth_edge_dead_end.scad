include <../floor_tile/smooth_floor.scad>

module smooth_edge_dead_end(x,y,right=false,left=false) {
  difference() {
    union() {
      smooth_floor(x,y,l=9.2,r=9.2,b=9.2, negative=false);
      translate([0,25*y,7.5]) cube([25*x+9.2*2,9.2,41.5]);
      translate([25*x+9.2,0,7.5]) cube([9.2,25*y,41.5]);
      translate([0,0,7.5]) cube([9.2,25*y,41.5]);
    }
    if(left || right) {
      translate([9.2,0,0]) frame_square_negative(x,y);
    }
    else {
      frame_square_negative(x,y,l=9.2,r=9.2,b=9.2);
    }
    if(left) {
      translate([9.2,0,-1]) rotate([0,0,45+90]) cube([20,20,55]);
    }
    if(right) {
      translate([25*x+9.2,0,-1]) rotate([0,0,45]) mirror([0,1,0]) cube([20,20,55]);
    }
  }
}

render=true;
x=2;
y=2;
right=false;
left=false;

if (render) {
  smooth_edge_dead_end(x,y,
    right=right,
    left=left);
}
