//----------------------------------------------------
// DT Bootcamp 2013, Parsons the New School for Design. 
// Day 2, Basic Geometry
// rectMode()
// http://processing.org/reference/rectMode_.html
//----------------------------------------------------

size(800, 600);

// There are different modes for drawing rectangles
// The default is from the top left corner

// Draw a blue rectangle at 300, 300 that is
// 400x200

fill(100, 100, 255);
rect(300, 300, 400, 200);

// Now change mode so that we start at the center of the
// rectangle instead of the top left corner
// Notice how the center of the green rectangle is at the
// same point as the top left corner of the blue rectangle

rectMode(CENTER);
fill(100, 255, 100, 125);
rect(300, 300, 400, 200);
