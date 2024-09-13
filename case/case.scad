PCBLength = 63;
PCBWidth = 44.5;
PCBHeight = 20;

PowerSupplyLength = 125;
PowerSupplyWidth = 50;
PowerSupplyHeight = 31.5;
PowerSupplyX = 0;
PowerSupplyY = 85;
PowerPlugWidth = 31;
PowerPlugHeight = 24;
PowerPlugHorizOffset = (PowerSupplyWidth - PowerPlugWidth)/2;
PowerPlugVertOffset = (PowerSupplyHeight - PowerPlugHeight)/2;

WallWidth = 2;

CaseLength = 165;
CaseWidth = 140;
CaseHeight = 40;

// Bottom
linear_extrude(WallWidth)
    square([CaseLength, CaseWidth]);
    
// Back

color("red")
    translate([WallWidth, 0, 0])
    rotate([0, -90, 0])
    linear_extrude(WallWidth)
    difference() {
        square([CaseHeight, CaseWidth]);
        // Power Plug
        translate([WallWidth+PowerPlugVertOffset, PowerSupplyY + PowerPlugHorizOffset, 0])
            square([PowerPlugHeight, PowerPlugWidth]);
    };

// Front

color("green")
    translate([CaseLength, 0, 0])
    rotate([0, -90, 0])
    linear_extrude(WallWidth)
    difference() {
        square([CaseHeight, CaseWidth]);
        // Output
        translate([CaseHeight*2/3, PCBLength*5/6, 0])
            circle(d=7);
    };

// Left

color("blue")
    translate([0, WallWidth, 0])
    rotate([90, 0, 0])
    linear_extrude(WallWidth)
    square([CaseLength, CaseHeight]);

// Right

color("brown")
    translate([0, CaseWidth, 0])
    rotate([90, 0, 0])
    linear_extrude(WallWidth)
    square([CaseLength, CaseHeight]);
    
    
// Power Supply Front

{
    $lengthpsf = PowerSupplyWidth + WallWidth*4;
    color("olive")
        translate([PowerSupplyLength+WallWidth*2+2, CaseWidth-$lengthpsf, 0])
        rotate([0, -90, 0])
        linear_extrude(WallWidth)
        square([10, $lengthpsf]);
}
    
// Power Supply Side

{
    $lengthpss = PowerSupplyLength + WallWidth*3;
    color("lime")
        translate([0, PowerSupplyY-WallWidth, 0])
        rotate([90, 0, 0])
        linear_extrude(WallWidth)
        square([$lengthpss, CaseHeight]);
}

// PCB Side

{
    $lengthcs = PCBWidth + WallWidth*6;
    color("orange")
        translate([CaseLength-$lengthcs, PCBLength + WallWidth*4, 0])
        rotate([90, 0, 0])
        linear_extrude(WallWidth)
        square([$lengthcs, CaseHeight]);
}

// PCB Front

{
    $lengthcf = PCBLength + WallWidth*3;
    color("lightblue")
        translate([CaseLength - PCBWidth - WallWidth*6, WallWidth, 0])
        rotate([0, -90, 0])
        linear_extrude(WallWidth)
        difference() {
            square([CaseHeight, $lengthcf]);
            translate([CaseHeight*2/3, PCBLength*5/6, 0])
                circle(d=8.5);
        }
}
    
// PCB
translate([CaseLength - PCBWidth - WallWidth - 2, PCBLength + WallWidth + 2, WallWidth]) {
    rotate([0, 0, -90]) {
        %linear_extrude(PCBHeight)
            square([PCBLength, PCBWidth]);
        translate([PCBLength/6, PCBWidth/2, PCBHeight])
            color("pink")
            %text("PCB");
    }      
}

// Inner plug
translate([125, 54, 27]) {
    rotate([0, -90, 0])
    %union() {
        linear_extrude(16)
            circle(d=10);
        translate([0, 0, 16])
            linear_extrude(5.4)
            circle(d=7);
    }
}

// Power Supply 
translate([WallWidth+PowerSupplyX, PowerSupplyY, WallWidth]) {
    %linear_extrude(PowerSupplyHeight)
        square([PowerSupplyLength, PowerSupplyWidth]);
    translate([PowerSupplyLength/5, PowerSupplyWidth/2, PowerSupplyHeight])
        color("pink")
        %text("Power Supply");
}