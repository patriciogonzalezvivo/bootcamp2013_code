//----------------------------------------------------
// DT Bootcamp 2013, Parsons the New School for Design. 
// Day 2, Basic Geometry
// background() and color mixing
// http://processing.org/reference/background_.html
//----------------------------------------------------

// Click for a random color!

void setup() {
  size(800, 600);
  
  // Set the background to white to begin
  background(255);
}

void draw() {
}

void mousePressed() {
  // When the mouse is pressed (clicked), choose random
  // values between 0-255 for red, green, and blue
  color c = color(random(255), random(255), random(255));
  
  // Then set the background color with those values
  background(c);
}
