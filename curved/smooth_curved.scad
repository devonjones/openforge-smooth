include <../floor_tile/smooth_floor.scad>

module smooth_curved(x,y) {
  difference() {
    union() {
      intersection() {
        smooth_floor(x,y, negative=false);
        if (x < y) {
          translate([0,0,-1]) scale([((25*x)-9.2)/((25*y)-9.2),1,1]) cylinder(10,(25*y)-9.2,(25*y)-9.2, $fn=200);
        } else {
          translate([0,0,-1]) scale([1,((25*y)-9.2)/((25*x)-9.2),1]) cylinder(10,(25*x)-9.2,(25*x)-9.2, $fn=200);
        }
      }
      if (x < y) {
        difference() {
          scale([x/y,1,1]) cylinder(49,25*y,25*y, $fn=200);
          translate([0,0,-1]) scale([((25*x)-9.2)/((25*y)-9.2),1,1]) cylinder(51,25*y-9.2,25*y-9.2, $fn=200);
          translate([-1-25*y,-1-25*y,-1]) cube([50*y+2,25*y+1,51]);
          translate([-1-25*y,-1,-1]) cube([25*y+1,25*y+1,51]);
        }
      } else {
        difference() {
          scale([1,y/x,1]) cylinder(49,25*x,25*x, $fn=200);
          translate([0,0,-1]) scale([1,((25*y)-9.2)/((25*x)-9.2),1]) cylinder(51,25*x-9.2,25*x-9.2, $fn=200);
          translate([-1-25*x,-1-25*x,-1]) cube([50*x+2,25*x+1,51]);
          translate([-1-25*x,-1,-1]) cube([25*x+1,25*x+1,51]);
        }
      }
    }
    frame_curve_negative(x, y);
  }
}

module smooth_curved_floor(x,y) {
  difference() {
    smooth_floor(x,y);
    translate([0,0,-1]) scale([x/y,1,1]) cylinder(49,25*y+1,25*y+1);
  }
}

render=false;
render_floor=false;
x=2;
y=2;

if (render) {
  smooth_curved(x,y);
} else if (render_floor) {
  smooth_curved_floor(x,y);
}
