//----------------------------------------------------
// DT Bootcamp 2013, Parsons the New School for Design. 
// Day 2, Basic Geometry
// fill()
// http://processing.org/reference/fill_.html
//----------------------------------------------------

size(800, 600);

// fill() sets the color that shapes will be fileld with
// when they are drawn
// noFill() turns the fill off

// Here are a few different rectangles, each filled with
// a different color

// fill (red, green, blue)
// very similar to background() !!
fill(255, 0, 0);
rect(100, 100, 600, 400, 20);

fill(0, 255, 0);
rect(150, 150, 500, 300, 40);

fill(0, 0, 255);
rect(200, 200, 400, 200, 60);

fill(255, 0, 255);
rect(250, 250, 300, 100, 80);

// Now turn fill off. Notice the background color (gray)
// is visible through the rectangle

noFill();
rect(50, 50, 700, 500, 100);
