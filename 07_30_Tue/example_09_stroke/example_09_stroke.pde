//----------------------------------------------------
// DT Bootcamp 2013, Parsons the New School for Design. 
// Day 2, Basic Geometry
// stroke(), noStroke(), strokeWeight()
// http://processing.org/reference/stroke_.html
// http://processing.org/reference/noStroke_.html
// http://processing.org/reference/strokeWeight_.html
//----------------------------------------------------

size(800, 600);

// Stroke refers to the border around a shape. You can
// turn it on and off, set the color, and set the width

// By default, processing uses a black stroke 1 pixel wide
fill(255, 100, 100);
rect(100, 100, 100, 100);

// Make the stroke thicker
strokeWeight(2);
fill(100, 255, 100);
rect(350, 100, 100, 100);

// And thicker
strokeWeight(5);
fill(100, 100, 255);
rect(600, 100, 100, 100);

// We can also change the color
fill(204, 100, 100);
stroke(255, 0, 0);
rect(100, 300, 100, 100);

// Notice how each property (stoke color, stroke weight)
// stays the same until you change it
fill(100, 204, 100);
stroke(0, 255, 0);
rect(350, 300, 100, 100);

// Or turn off the stroke
noStroke();
fill(100, 100, 255);
rect(600, 300, 100, 100);
