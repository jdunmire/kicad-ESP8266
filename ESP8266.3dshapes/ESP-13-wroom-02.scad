fragments=20;
module halfPad() {
    color("Gold", a=1) {
        difference() {
            cube(size=[0.85,0.90,1], center=true);
        };
    };
};

module padHoles(x, y, zRot = 0) {
    rotate([0, 0, zRot]) {
        translate([x, y, 0]) {
            cylinder(h=2,d=0.6,center=true,$fn=fragments);
        };
    };
};

module pad(x, y, zRot = 0) {
    rotate([0, 0, zRot]) {
        translate([x, y, 0]) {
            halfPad();
        };
    };
};

module pads() {
    pad(8.575,-9);
    pad(8.575,-7.5);
    pad(8.575,-6);
    pad(8.575,-4.5);
    pad(8.575,-3);
    pad(8.575,-1.5);
    pad(8.575,0);
    pad(8.575,1.5);
    pad(8.575,3);
    
    pad(8.575,-3,180);
    pad(8.575,-1.5,180);
    pad(8.575,0,180);
    pad(8.575,1.5,180);
    pad(8.575,3,180);
    pad(8.575,4.5,180);
    pad(8.575,6,180);
    pad(8.575,7.5,180);
    pad(8.575,9,180);
};

module holes() {
    
    padHoles(9,-9);
    padHoles(9,-7.5);
    padHoles(9,-6);
    padHoles(9,-4.5);
    padHoles(9,-3);
    padHoles(9,-1.5);
    padHoles(9,0);
    padHoles(9,1.5);
    padHoles(9,3);
    
    padHoles(9,-3,180);
    padHoles(9,-1.5,180);
    padHoles(9,0,180);
    padHoles(9,1.5,180);
    padHoles(9,3,180);
    padHoles(9,4.5,180);
    padHoles(9,6,180);
    padHoles(9,7.5,180);
    padHoles(9,9,180);
};

// Translate so that pin 1 and the bottom of the board
// is the reference point (0,0,0)
translate([0,0,0]) {
    // pcb
    difference() {
        union() {
            color("Blue", a=1) {
                translate([0, 0, 0]) {
                    cube(size=[18, 20, .98], center = true);
                };
            };
            pads();
        };
        holes();
    };

    //shield
    translate([0, -3, 1]) {
        color("Silver", a=1) {
            cube(size=[15, 13, 1], center = true);
        };
    };
};
