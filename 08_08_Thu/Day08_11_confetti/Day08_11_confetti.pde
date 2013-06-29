// Draws "confetti" where mouse is released.

int numFires = 200;

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
//  for (int i = 0; i < fireX.length; i++) {
//    fireX[i] = 0;
//    fireY[i] = 0;
//    fireXSpeed[i] = 0;
//    fireYSpeed[i] = 0;
//  }
}



void draw() {

  background(0);

  for (int i = 0; i < fireX.length; i++) {

    fireX[i] += fireXSpeed[i];
    fireY[i] += fireYSpeed[i];
    
    fireYSpeed[i] += gravity; 
  }

  for (int i = 0; i < fireX.length; i++) {
    fill(fireColors[i]);
    ellipse(fireX[i], fireY[i], 10, 10);
  }
}

void mouseReleased() {

  for (int i = 0; i < fireX.length; i++) {

    fireX[i] = mouseX;
    fireY[i] = mouseY;

    fireXSpeed[i] = random(-2, 2);
    fireYSpeed[i] = random(-7, -3);
    
    fireColors[i] = color(random(120, 360), 255, 255, 150);
  }
}

