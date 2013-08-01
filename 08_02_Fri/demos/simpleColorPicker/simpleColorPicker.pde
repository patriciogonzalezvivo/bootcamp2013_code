PImage cage;

void setup() {
  
  cage = loadImage("cage.jpg");
  
  size(cage.width, cage.height);
  
  imageMode(CENTER);
  rectMode(CENTER);
}

void draw() {
  image(cage, width/2, height/2);
  color getColor = cage.get(mouseX, mouseY);
  noStroke();
  fill(getColor);
  rect(mouseX,mouseY, 50, 50);
}
