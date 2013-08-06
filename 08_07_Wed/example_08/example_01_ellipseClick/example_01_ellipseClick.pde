// store position of circle
int xPos = 0;
int yPos = 0;

void setup() {
  size(displayWidth, displayHeight);
  fill(#0FB95A);
  noStroke();
}

void draw() {
  background(255);
  
  // draw the circle at recorded position
  ellipse(xPos, yPos, 200, 200);
}

void mouseClicked() {
  // store the circle position as wherever the 
  // mouse is clicked
  xPos = mouseX;
  yPos = mouseY;
}

boolean sketchFullScreen() {
  return true;
}
