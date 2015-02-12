include <../floor_tile/smooth_floor.scad>

module smooth_edge_curved(x,y) {
  difference() {
    union() {
      intersection() {
        smooth_floor(x,y,negative=false);
        if (x < y) {
          translate([0,0,-1]) scale([x/y,1,1]) cylinder(10,25*y,25*y, $fn=200);
        } else {
          translate([0,0,-1]) scale([1,y/x,1]) cylinder(10,25*x,25*x, $fn=200);
        }
      }
      if (x < y) {
        difference() {
          scale([((25*x)+9.2)/((25*y)+9.2),1,1]) cylinder(49,(25*y+9.2),(25*y+9.2), $fn=200);
          translate([0,0,-1]) scale([x/y,1,1]) cylinder(51,25*y,25*y, $fn=200);
          translate([-1-25*y-10,-1-25*y-10,-1]) cube([50*y+12,25*y+11,51]);
          translate([-1-25*y-10,-1,-1]) cube([25*y+11,25*y+11,51]);
        }
      } else {
        difference() {
          scale([1,((25*y)+9.2)/((25*x)+9.2),1]) cylinder(49,25*x+9.2,25*x+9.2, $fn=200);
          translate([0,0,-1]) scale([1,y/x,1]) cylinder(51,25*x,25*x, $fn=200);
          translate([-1-25*x-10,-1-25*x-10,-1]) cube([50*x+22,25*x+11,51]);
          translate([-1-25*x-10,-1,-1]) cube([25*x+11,25*x+11,51]);
        }
      }
    }
    frame_curve_negative(x, y, b=9.2);
  }
}
//smooth_edge_curved(4,4);

module smooth_edge_curved_half_floor(x,y) {
  difference() {
    union() {
      smooth_floor(x,y);
      translate([25*x,0,0]) cube([9.2,25*y,9.5]);
      translate([0,25*y,0]) cube([25*x+9.2,9.2,9.5]);
    }
    translate([0,0,-1]) scale([((25*x)+9.2)/((25*y)+9.2),1,1]) cylinder(49,(25*y+10.2),(25*y+10.2));
  }
}

//smooth_edge_curved_half_floor(2,2);
