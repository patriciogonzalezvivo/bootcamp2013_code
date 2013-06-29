
void setup() {
  size(255, 255);
  background(255);
  smooth();
}

void draw() {

  fill(mouseX, mouseY, 100);
  noStroke();
  ellipse(width/2, height/2, width, height);
  println(mouseX + " " +mouseY);
  //  println(mouseX + " " +"my mouseY coordinates are " + mouseY);
}

