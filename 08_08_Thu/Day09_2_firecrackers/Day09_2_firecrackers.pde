//----------------------------------------------------
// DT Bootcamp 2013, Parsons the New School for Design. 
// Day 9, Arrays and gravity
// Add gravity to animation
// http://www.processing.org/reference/Array.html
//----------------------------------------------------

// Draws firworks where mouse is released.

int numFires = 200;

// declare and create arrays
float[] fireX = new float[numFires];
float[] fireY = new float[numFires];
float[] fireXSpeed = new float[numFires];
float[] fireYSpeed = new float[numFires];

color[] fireColors = new color[numFires];

float gravity;

void setup() {
  size(500, 500);
  smooth();
  noStroke();

  colorMode(HSB);

  gravity = 0.1;

  // assigning value of 0 to all the items in the fireX, fireY + speed arrays.
  // Note that the code will work without this.
  for (int i = 0; i < fireX.length; i++) {
    fireX[i] = 0;
    fireY[i] = 0;
    fireXSpeed[i] = 0;
    fireYSpeed[i] = 0;
  }
}



void draw() {

  background(0);

  // this for loop recalculates the position of each circle
  for (int i = 0; i < fireX.length; i++) {
    fireX[i] += fireXSpeed[i];
    fireY[i] += fireYSpeed[i];
    fireYSpeed[i] += gravity;
  }

  // this for loop draws all the circles
  for (int i = 0; i < fireX.length; i++) {
    fill(fireColors[i]);
    ellipse(fireX[i], fireY[i], 10, 10);
  }
}

// create a new set of circles when the mouse is released
void mouseReleased() {

  for (int i = 0; i < fireX.length; i++) {

    fireX[i] = mouseX;
    fireY[i] = mouseY;

    fireXSpeed[i] = random(-2, 2);
    fireYSpeed[i] = random(-7, -3);

    fireColors[i] = color(random(120, 360), 255, 255, 150);
  }
}

