include <../floor_tile/smooth_floor.scad>

module smooth_wall(x,y) {
  union() {
    translate([0,25*y-9.2,7.5]) cube([25*x,9.2,3.7]);
    difference() {
      smooth_floor(x,y);
      translate([0,25*y-9.2,7.5]) cube([25*x,9.2,3.7]);
    }
    translate([0,25*y-9.2,7.5+3.7]) cube([25*x,9.2,37.8]);
  }
}

render=false;
x=2;
y=2;

if (render) {
  smooth_wall(x,y);
}
