
void setup () {
  size(300, 300);
}
void draw() {
  noFill();
  for (int i = 0; i < 6; i++) {
    ellipse(width/2, height/2, i*50, i*50);
  }
}

