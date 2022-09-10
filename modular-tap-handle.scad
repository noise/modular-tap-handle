// https://dkprojects.net/openscad-threads/
use <lib/threads.scad>

parts = ["base", "top"];
icon = "h2o"; // "apple";  "barley", "hops", "h2o"

// unit conversion
mm_per_inch = 25.4;

// overall smoothness
$fn=50;

// skip thread rendering while iterating
fast = $preview;

// base
b_h = 60;
b_d = 10;

// top
h = 50;
w = 50;
d = 25;
r = 3;
d2 = d + 2*r;


module twisty_base() {
  difference() {
    // main twisty cylinder
    linear_extrude(b_h, convexity=10, twist=-155, slices=250, scale=1.5){
      offset(r=3)
        circle(r=b_d/2, $fn=6);
    }
    // minus faucet thread - 3/8, 16 UNC
    if (!fast) {
      translate([0,0, 0])
        english_thread(diameter=3/8, threads_per_inch=16,
               length=(15)/mm_per_inch, internal=true,
      slop_mm=0.5); // 0.5 was snug but good once broken in
    }
  }
  // + top male thread
  if (!fast) {
    translate([0,0,b_h])
      english_thread(diameter=3/4, threads_per_inch=8,
             length=(15)/mm_per_inch, internal=false, 
             slop_mm=-1.0); // 1.0 slop fit nicely
  }
}


module top() {
  difference() {
    difference() {
      // main block
      translate([0, d2/2, 0])
      rotate([90,0,0])
      translate([0,r,r])
      minkowski() {
        linear_extrude(d)
        translate([0,0,0])
        polygon(points=[
          [-w/4, 0],
          [w/4, 0], 
          [w/2, h/3],
          [w/2, h],
          [-w/2, h],
          [-w/2, h/3],
          [-w/4, 0]
        ]);
        sphere(r=r);
      }

      // minus thread
      if (!fast) {
      #translate([0,0, 0])
        english_thread(diameter=3/4, threads_per_inch=8,
              length=(20)/mm_per_inch, internal=true);
      }
      else {
        cube();
      }
    }

    // + design engraving
    translate([0, 0,0])
    echo("icon: ", icon);
    if (icon == "apple") {
      apple();
    }
    else if (icon == "barley") {
      barley();
    }
    else if (icon == "h2o") {
      h2o();
    }
    else if (icon == "hops") {
      hops();
    }
  }
}

// ---------------
// Designs
// ---------------

module apple() {
    color("red")
    translate([-20,-d/2-2,12])  
    rotate([90,0,0])
      linear_extrude(4,center=true)
        scale(11) import("icons/apple-logo.dxf");
}

module barley() {
    color("yellow")
    translate([0,-d/2-2,29])  
    rotate([90,0,0])
      linear_extrude(4,center=true)
        scale(.35) import("icons/barley2.svg", dpi=96, center=true);
}

module h2o() {
    color("blue")
    translate([-29.3,-d/2-2,20])
    rotate([90,0,0])
      linear_extrude(4,center=true)
        scale(.215) import("icons/h2o.svg", dpi=96, center=false);
}

module hops() {
    color("green")
    translate([0,-d/2-2,29])  
    rotate([90,0,0])
      linear_extrude(4,center=true)
        scale(2.6) import("icons/hops.svg", dpi=96, center=true);
}

// ---------------
// Main 
// ---------------
echo ("checking parts...")

for(p=parts) {
  echo(">>>>> rendering ", p);
  if (p == "base") {
    twisty_base();
  }
  if (p == "top") {
    if (parts == ["base", "top"]) {
      echo("BOOOOOOO")
      translate([0,0,b_h + 0])
      top();
    }
    else {
      top();
    }
  }
}  
