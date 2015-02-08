include <../../lib/forge_lib.scad>

module smooth_tile() {
 cube([25,25,7.5]);
 translate([.325,.325,7.5]) cube([24.35,24.35,2]);
}

module smooth_floor(x, y, l=0, r=0, f=0, b=0) {
  difference() {
    union () {
      translate([l, f, 0]) union() {
        for (i = [0:(x-1)]) {
          for (j = [0:(y-1)]) {
            translate([25*i,j*25,0]) smooth_tile();
          }
        }
      }
      if(f != 0 || b != 0) {
        cube([25*x+l+r,25*y+f+b,7.5]);
      }
    }
    frame_square_negative(x, y, l, r, f, b);
  }
}

//smooth_floor(2,2,f=9.2, b=9.2);
