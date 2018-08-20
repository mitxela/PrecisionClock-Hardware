w = 23.98;
h = 34;
d = 10.55;

t = 0.58;
u= d-8.1+1.55;

difference(){

    cube( [w,h,d] );

    //translate([0,0,11]) scale([w/211,h/299,-0.01]) %surface("7SegDigit-300.png");
    

    translate([21.2,5.9,10.4])
    scale([1.25,1.25,1])
    cylinder($fn=20);
    
    translate([0,0,10.4])
    linear_extrude(height=1)
    scale(0.1) {
        polygon([[47,42],[151,42],[160,50],[145,67],[62,67],[41,50]]);
        
        polygon([[37,54],[31,62],[50,166],[64,166],[73,153],[58,71]]);
        
        polygon([[164,54],[150,70],[164,152],[180,166],[192,166],[173,62]]);
        
        polygon([[76,156],[162,156],[175,169],[166,182],[82,182],[68,169]]);
        
        polygon([[51,172],[64,172],[79,186],[94,268],[79,284],[70,276]]);
        
        polygon([[180,171],[193,171],[213,276],[206,283],[185,266],[170,185]]);

        polygon([[97,271],[182,271],[202,288],[196,296],[93,297],[84,288]]);
        
    }
    
    translate([t,t,0])
    cube([w-2*t,h-2*t,u]);
    
    cutout1();
    cutout2();
}



module cutout1() {
    wt=17.7;
    wb=19.82;
    wc=(wb-wt)/2;
    wd=d-8.1;

    we = (w-wb)/2;
    
    
    translate([we,80,0])
    rotate([90,0,0])
    linear_extrude() polygon([[0,0],[wb,0],[wt+wc,wd],[wc,wd]]);
}

module cutout2() {
    wt=27.6;
    wb=29.55;
    wc=(wb-wt)/2;
    wd=d-8.1;

    we = (w-wb)/2;
    
    
    translate([-10,-we,0])
    rotate([90,0,90])
    linear_extrude() polygon([[0,0],[wb,0],[wt+wc,wd],[wc,wd]]);
}


pinr=0.48/2;

module pin(x,y){
    translate([x,y,u-8])

    cylinder(r=pinr,h=8,$fn=10);
}


for (i=[0:4])
    pin(6.75 -pinr + i*2.54, 2.1-pinr);


for (i=[0:4])
    pin( 6.85 -pinr + i*2.54, h-(2.1-pinr));





