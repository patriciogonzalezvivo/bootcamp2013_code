int numPoints = 50;
int[] xPos = new int[numPoints];
int[] yPos = new int[numPoints];

void setup() {
  size(displayWidth, displayHeight);
  fill(#0FB95A, 200);
  noStroke();

  for (int i = 0; i < numPoints; i++) {
    xPos[i] = 0;
    yPos[i] = 0;
  }
}

void draw() {
  background(255);

  for (int i = 0; i < numPoints; i++) {
    ellipse(xPos[i], yPos[i], 100, 100);
  }
}

void mouseDragged() {
  for (int i = 1; i < numPoints; i++) {
    xPos[i-1] = xPos[i];
    yPos[i-1] = yPos[i];
  }
  xPos[numPoints-1] = mouseX;
  yPos[numPoints-1] = mouseY;
}

// uncomment this code and the line will be cleared
// once the mouse is released
//void mouseReleased() {
//  xPos = new int[numPoints];
//  yPos = new int[numPoints];
//}

boolean sketchFullScreen() {
  return true;
}

