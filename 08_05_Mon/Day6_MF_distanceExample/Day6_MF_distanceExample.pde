void setup() {
  size(800, 600);
  fill(#BE51ED);
  noStroke();
}

void draw() {
  background(255);
  float distance = dist(mouseX, mouseY, width/2, height/2);
  ellipse(width/2, height/2, 500-distance, 500-distance);
}

