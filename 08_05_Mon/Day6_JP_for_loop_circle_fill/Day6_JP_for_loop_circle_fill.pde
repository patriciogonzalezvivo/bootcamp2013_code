void setup() {
  size(500, 200);
}

void draw() {
  for (int i = 0; i < 10; i++){
    if (dist(mouseX, mouseY, i*50 + 20, 100) < 20) {
      fill(224, 101, 29);
    } else {
      fill(255);
    }
    ellipse(i*50 + 20, 100, 40, 40);
  }
}

