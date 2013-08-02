void setup() {
  background(255);
  noStroke();void setup() {
  size(800, 600);
  fill(#BE51ED);
  noStroke();
}

void draw() {
  background(255);
  float distance = dist(mouseX, mouseY, width/2, height/2);
  ellipse(width/2, height/2, 500-distance, 500-distance);
}
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

  size(800, 600);
  colorMode(HSB, 360, 100, 100, 100);
}

void draw() {
  fill(random(360), random(50, 90), random(50, 90), random(50, 90));
  int size = int(random(10, 50));
  ellipse(random(width), random(height), size, size);
}

