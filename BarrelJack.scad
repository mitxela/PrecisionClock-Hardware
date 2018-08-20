
$fn=20;


difference(){

    union(){
        cube([13.8,8.85,6.1]);

        translate([13.8-10.88,8.85/2,6.1])
        rotate([0,90,0])
        cylinder(r=7.81/2,h=10.88);


        translate([0,8.85,0])
        rotate([0,0,-90])
        cube([8.85,13.8-10.88,10.8]);
    }
    
    translate([0,8.85/2,6.3/2+3])
    rotate([0,90,0])
    cylinder(r=6.3/2, h=12);
    
    translate([13.6,8.85/2,6.3/2+3])
    rotate([0,90,0])
    cylinder(r=4.1/2, h=1);
}


module pin(w){
    
    difference(){
        union(){
            cube([0.3,w,7]);
            
            translate([0,w/2,0])
            rotate([0,90,0])
            cylinder(h=0.3,r=w/2);
        }
        
        translate([0,w/2,0])
        rotate([0,90,0])
        cylinder(h=0.3,r=1/2);
    }
}

translate([11.5,-0.3,-2.5])
rotate([0,0,90])
pin(2);

translate([13.8-0.2 -6,8.85/2 -2.5/2,-2.5])
pin(2.5);

translate([13.8-0.2,8.85/2 -2.5/2,-2.5]){
    pin(2.5);
    translate([0,0,1]) cube([0.3,2.5,7]);
    
    translate([0,2.5/2,6.3/2+3+2.5])
    rotate([0,90,0])
    cylinder(h=0.3,r=1.4);
}

    translate([1.2+2.5,8.85/2,6.3/2+3])
    rotate([0,90,0]){
        cylinder(r=2.5/2, h=11-2.5);
        sphere(2.5/2);
    }
