
void setup() {
  size(500, 500);
  smooth();
  background(0, 255, 255);
}

void draw() {

  for (int i = 1; i <= 10; i++) {
    myRect(width/2, height/2, i*35, i);
  }
}

void mouseDragged() {

  for (int i = 1; i <= 10; i++) {
    myRect(mouseX, mouseY, i*2, i);
  }
}

void mouseReleased () {
  background(0, 255, 255);
}

// Function

void myRect(int rectX, int rectY, int diameter, int rectStroke) {
  rectMode(CENTER);
  noFill();
  strokeWeight(rectStroke);
  stroke(0, 50);
  rect(rectX, rectY, diameter, diameter);
}

