//----------------------------------------------------
// DT Bootcamp 2013, Parsons the New School for Design. 
// Day 8, Arrays
//
// remeber the last positions
//----------------------------------------------------


int numPos = 50;
int[] xPos = new int[numPos];
int[] yPos = new int[numPos];

void setup() {
  size(displayWidth, displayHeight);
  stroke(0, random(255), random(255));

  for (int i = 0; i < numPos; i++) {
    xPos[i] = -1;
    yPos[i] = -1;
  }
}

void draw() {
  background(255);

  beginShape();
  // try this one for a cool effect
  //beginShape(TRIANGLE_FAN);
  
  for (int i = 0; i < numPos; i++) {
    if (xPos[i] != -1 && yPos[i] != -1) {
      vertex(xPos[i], yPos[i]);
    }
  }
  endShape();
}

void mouseDragged() {
  for (int i = 0; i < numPos-1; i++) {
    xPos[i] = xPos[i+1];
    yPos[i] = yPos[i+1];
  } 

  xPos[numPos-1] = mouseX;
  yPos[numPos-1] = mouseY;
}

boolean sketchFullScreen() {
  return true;
}

