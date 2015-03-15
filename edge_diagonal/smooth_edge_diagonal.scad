include <../floor_tile/smooth_floor.scad>

module smooth_edge_diagonal(x,right=false,left=false,right_sharp=false,left_sharp=false) {
  difference() {
    union() {
      difference() {
        smooth_floor(x,x, negative=false);
        translate([25*x,0,-1]) rotate([0,0,45]) translate([0,-sqrt(169.28)/2,0]) cube([25*x*x,sqrt(((x*25+9.2)*(x*25+9.2)*2)),49]);
      }
      difference() {
        translate([25*x,0,0]) rotate([0,0,45]) translate([0,-sqrt(169.28)/2,0]) cube([sqrt(42.32),sqrt(((x*25+9.2)*(x*25+9.2)*2)),49]);
        translate([0,-10,-1]) cube([25*x+10,10,51]);
        translate([-10,0,-1]) cube([10,25*x+10,51]);
      }
    }
    if(left || right || left_sharp || right_sharp) {
      frame_angle_negative(x,x);
    }
    else {
      frame_angle_negative(x,x,e=9.2);
    }
    if(left) {
      translate([0,25*x,-1]) rotate([0,0,45]) cube([20,20,55]);
    }
    if(left_sharp) {
      translate([-0.1,25*x,-1]) rotate([0,0,0]) cube([20,20,55]);
    }
    if(right) {
      translate([25*x,0,-1]) rotate([0,0,45]) mirror([0,1,0]) cube([20,20,55]);
    }
    if(right_sharp) {
      translate([25*x,-0.1,-1]) rotate([0,0,90]) mirror([0,1,0]) cube([20,20,55]);
    }
  }
}

module smooth_diagonal_half_floor(x) {
  difference() {
    union() {
      smooth_floor(x,x);
      translate([25*x,0,0]) cube([9.2,25*x,9.5]);
      translate([0,25*x,0]) cube([25*x+9.2,9.2,9.5]);
    }

    translate([25*x,0,-1]) rotate([0,0,45]) translate([0,-sqrt(169.28)/2-1,0]) cube([sqrt(42.32)+1,sqrt(((x*25+9.2)*(x*25+9.2)*2))+2,20]);
    rotate([0,0,45]) translate([0,-25*x,-1]) cube([sqrt(x*25*x*25*2)/2+1,200,20]);
  }
}

render=false;
render_floor=true;
x=4;
right=false;
left=false;
right_sharp=false;
left_sharp=false;

if (render) {
  smooth_edge_diagonal(x,
    right=right,
    left=left,
    right_sharp=right_sharp,
    left_sharp=left_sharp);
} else if (render_floor) {
  smooth_diagonal_half_floor(x);
}
