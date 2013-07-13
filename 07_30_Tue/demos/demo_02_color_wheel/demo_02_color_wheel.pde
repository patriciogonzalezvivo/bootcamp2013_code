//----------------------------------------------------
// DT Bootcamp 2013, Parsons the New School for Design. 
// Day 2, Basic Geometry
// colorMode()
// http://processing.org/reference/colorMode_.html
//----------------------------------------------------

// Move the mouse horizontally to move through the color wheel

void setup() {
  size(800, 600);
  background(255);
  
  // Change the color mode to HSB instead of RGB
  // Use 0-360 for hue
  // Use 0-100 for saturation, brightness, and alpha
  colorMode(HSB, 360, 100, 100, 100);
}

void draw() {
}

void mouseMoved() {
  // Calculate where the mouse is horizontally from
  // 0-360
  // The left side of the sketch will be 0
  // The right side will be 360
  float hue = (float) mouseX / width * 360;
  println(hue);
  
  // Now set the background color according to where the mouse is
  color c = color(hue, 80, 80);
  background(c);
}
