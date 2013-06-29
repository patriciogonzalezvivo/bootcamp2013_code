/* Stores user input from mouse during mouseDragged, and draws it
at the proper points when mouse is released.*/

int numPos = 100;
int[] xPos = new int[numPos];
int[] yPos = new int[numPos];

color[] circleColors = new color[numPos];

boolean justReleased;

void setup() {
  size(500, 500);
  smooth();
  noStroke();
  colorMode(HSB);

//  for (int i = 0; i < numPos; i++) {
//    xPos[i] = 0;
//    yPos[i] = 0;
//  }
}


void draw() {
  background(0);
  if (justReleased == true) {
    for (int i = 0; i < numPos; i++) {
      fill(circleColors[i]);
      ellipse(xPos[i], yPos[i], 10, 10);
    }
  }
}

void mouseDragged() {
  
  justReleased = false;
  for (int i = 0; i < numPos-1; i++) {
    xPos[i] = xPos[i+1];
    yPos[i] = yPos[i+1];
    
    circleColors[i] = color(random(200, 360), 255, 255, 200);
  }

  xPos[numPos-1] = mouseX;
  yPos[numPos-1] = mouseY;
  
}

void mouseReleased() {
  justReleased = true;
}

