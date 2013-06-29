
void setup() {
  size(500, 500);
  smooth();
}

void draw() {
  for (int i = 1; i <= 15; i++) {
    myEllipse(i*30);
  }
}

// Function

void myEllipse(int diameter) {
  noFill();
  stroke(0);
  ellipse(width/2, height/2, diameter, diameter);
}











