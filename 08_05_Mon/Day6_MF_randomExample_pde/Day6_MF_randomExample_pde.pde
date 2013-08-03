int size;

void setup() {
  size(800, 600);
  background(255);
  noStroke();
  colorMode(HSB, 360, 100, 100, 100);
  
}

void draw() {
  fill(random(360), random(50, 90), random(50, 90), random(50, 90));
  size = int(random(10, 50));
  ellipse(random(width), random(height), size, size);
}

