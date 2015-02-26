include <../../lib/forge_lib.scad>
include <../../smooth/wall/smooth_wall.scad>

module battery_holder() {
  translate([-10,-10,0]) difference() {
    union() {
      cylinder(3,14,14,$fn=200);
      cube([14,14,3]);
      cylinder(5,13.5,13.5,$fn=200);
    }
    translate([0,0,-0.5]) cylinder(8,10.1,10.1,$fn=200);
    translate([0,0,3]) cylinder(8,11.5,11.5,$fn=200);
    translate([10,10,-0.5]) cylinder(8,2,2,$fn=200);
    rotate([0,0,45]) translate([-25,7,-0.5]) cube([50,50,8]);
    rotate([0,0,45]) translate([-15,2,3]) cube([50,50,8]);
    rotate([0,0,45]) translate([-15,-52,3]) cube([50,50,8]);
    rotate([0,0,45]) translate([0,-25,3]) cube([50,50,8]);
  }
}

module battery_holder_negative() {
  difference() {
    union() {
      translate([0,0,-1]) cylinder(4,14.5,14.5,$fn=200);
      translate([0,0,-1]) cube([14.5,14.5,4]);
    }
    rotate([0,0,45]) translate([-25,7,-1.5]) cube([50,50,6]);
  }
}

module battery_holder_hole() {
  difference() {
    hull() {
      translate([-10,-10,0]) battery_holder_negative();
      rotate([0,0,-5]) translate([-10,-10,0]) battery_holder_negative();
      rotate([0,0,-10]) translate([-10,-10,0]) battery_holder_negative();
      rotate([0,0,-15]) translate([-10,-10,0]) battery_holder_negative();
    }
    translate([0,0,-1.1]) cylinder(4.5,1.8,1.8,$fn=200);
  }
  difference() {
    translate([0,0,4]) cylinder(3.8,16+sqrt(200),16+sqrt(200),$fn=200);
    translate([0,0,-0.01]) cylinder(8,9+sqrt(200),9+sqrt(200),$fn=200);
    rotate([0,0,45]) translate([-40,-104,-0.1]) cube([100,100,8]);
    rotate([0,0,45-15]) translate([-40,4,-0.1]) cube([100,100,8]);
    translate([-40,2,-0.1]) cube([100,100,8]);
  }

  rotate([0,0,-15]) translate([-10,-10,-1]) cylinder(4,10,10,$fn=200);
  difference() {
    cylinder(6.02,14+sqrt(200),14+sqrt(200),$fn=200);
    translate([0,0,-0.01]) cylinder(8,11+sqrt(200),11+sqrt(200),$fn=200);
    rotate([0,0,45]) translate([-40,-102,-0.1]) cube([100,100,8]);
    rotate([0,0,45-15]) translate([-40,2,-0.1]) cube([100,100,8]);
  }
}

module lower_base() {
  difference() {
    cube([50,50,6.5]);
    frame_square_negative(2, 2);
    translate([13,35.25,5.01]) rotate([180,0,210]) battery_holder_hole();
    translate([1,1,5.5]) cube([48,48,2]);
    translate([27,45,1]) cylinder(6,0.75,0.75,$fn=200);
  }
}

module lower_base_negative() {
  difference() {
    translate([-1,-1,-0.1]) cube([52,52,6.6]);
    translate([1.25,1.25,5.5]) cube([47.5,47.5,2]);
  }
  translate([27,45,1]) cylinder(25,0.75,0.75,$fn=200);
  translate([23,45,1]) cylinder(25,0.75,0.75,$fn=200);
  rotate([-90,0,0]) translate([23,-5.5,30]) cylinder(15,0.75,0.75,$fn=200);
}

module torch() {
  difference() {
    union() {
      cylinder(1,3.5,3.5,$fn=200);
      cylinder(12,3,1.5,$fn=200);
      translate([0,0,6]) cylinder(1,2.5,2.5,$fn=200);
    }
    rotate([45,0,0]) translate([1.75,0.5,-0.4]) cylinder(10,.5,.5,$fn=200);
    rotate([45,0,0]) translate([-1.75,0.5,-0.4]) cylinder(10,.5,.5,$fn=200);
    translate([1.75,0,-2]) cylinder(2.5,1,1,$fn=200);
    translate([-1.75,0,-2]) cylinder(2.5,1,1,$fn=200);
  }
}

module maintenance_negative() {
  difference() {
    cube([20,6,20]);
    translate([9,-0.01,-1]) cube([2,2.01,22]);
    translate([-0.01,-0.01,-1]) cube([2.02,2.01,22]);
    translate([18,-0.01,-1]) cube([2.02,2.01,22]);
    translate([-1,0,14]) rotate([45,0,0]) cube([22,10,20]);
  }
  rotate([-90,0,0]) translate([8,-14,-6]) cylinder(15,0.75,0.75,$fn=200);
  rotate([-90,0,0]) translate([12,-14,-6]) cylinder(15,0.75,0.75,$fn=200);
}

module smooth_torch_wall() {
  difference() {
    union() {
      smooth_wall(2,2);
      translate([21.5,50-10.19,24]) cube([7,1,4]);
    }
    lower_base_negative();
    translate([25-10,45,12]) maintenance_negative();
  }
}

module smooth_torch_hatch() {
  difference() {
    translate([0,2.1,0]) cube([19.8,2.9,20]);
    translate([-1,0,13.8]) rotate([45,0,0]) cube([22,10,20]);
  }
}

module maintenance_hatch_negative() {
  difference() {
    translate([0,2.1,0]) cube([19.8,3.9,20]);
    translate([-1,0,13.8]) rotate([45,0,0]) cube([22,10,20]);
  }
}

//lower_base_negative();
//smooth_torch_hatch();
//smooth_torch_wall();
//torch();
//lower_base();
//battery_holder();