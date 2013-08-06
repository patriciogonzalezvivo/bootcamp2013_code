int numPoints = 10;
int numClicks = 0;

int[] xPos = new int[numPoints];
int[] yPos = new int[numPoints];

void setup() {
  size(displayWidth, displayHeight);
  fill(#0FB95A, 200);
  noStroke();
}

void draw() {
  background(255);

  for (int i = 0; i < numClicks; i++) {
    ellipse(xPos[i], yPos[i], 100, 100);
  }
}

void mousePressed() {
  // first, make sure that we're not trying to add more points
  // than the array can hold
  if (numClicks < numPoints) {
    xPos[numClicks] = mouseX;
    yPos[numClicks] = mouseY;

    numClicks++;
    // the above line is the same as
    // numClicks = numClicks + 1
    // and also this one
    // numClicks += 1;
    // different ways of writing the same thing!
  }
}

boolean sketchFullScreen() {
  return true;
}

