void setup() {
  size(500, 200);
}

void draw() {
  for (int i = 0; i < 20; i++) {
    fill(255, dist(mouseX, mouseY, i * 25, 100), 255);
    ellipse(i*25, 100, 20, 20);
  }
}
