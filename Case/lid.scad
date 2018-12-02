
PageLengthA4 = 297;
PageWidthA4 = 210;

// TODO: Determine size I really want this to be ... but for now A4 seems like a good start as I can use a single A4 sheet of acrylic
lidWidth = PageLengthA4;
lidDepth = PageWidthA4;

// TODO: Determine correct radius
arcadeButtonHoleRadius = 10;

module holeForAaaaaaaJoystick()
{
    // Place holder for the joystick I plan to use
    // TODO: Figure out what this should look like
    square([50, 50], center=true);
}

module holeForArcadeButton()
{
    circle(r=arcadeButtonHoleRadius, center=true);
}

module lid()
{
    difference()
    {
        // Main panel
        square([lidWidth, lidDepth]);

        // Holes for joystick
        translate([lidWidth*1/4, lidDepth/2]) holeForAaaaaaaJoystick();

        // Holes for buttons
        translate([lidWidth*2/3, lidDepth/2])
        for(x = [0 : 1 : 3])
        {
            for(y = [0 : 1 : 1])
            {
                if (x == 0)
                    translate([x*25, y*30]) holeForArcadeButton();
                else if ((x % 2) == 0)
                    translate([x*25, y*30 + 20]) holeForArcadeButton();
                else
                    translate([x*25, y*30 + 10]) holeForArcadeButton();
            }
        }
    }
}

//linear_extrude(height = 5)
lid();
