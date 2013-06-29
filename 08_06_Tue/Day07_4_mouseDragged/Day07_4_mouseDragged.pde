
void setup() {

  size(500, 500);
  background(200, 200, 0);
  noStroke();
  frameRate(60);
  smooth();
}

void draw() {
}

void mouseDragged() {  
  ellipse (mouseX, mouseY, 5, 5);
}

// If you want to keep the drawing
// Comment the mouse rekeased function
//try it!
void mouseReleased() {
  background(200, 200, 0);
}

