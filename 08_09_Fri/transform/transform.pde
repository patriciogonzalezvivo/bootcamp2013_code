float angle = 0;

void setup() {
  size(displayWidth, displayHeight);
  fill(#007DB4, 80);
  noStroke();
  rectMode(CENTER);
}

void draw() {
  background(255);

  angle += 0.05;

  // wrong way
  // rotates around the top left corner (0, 0)
  //rotate(angle);
  //rect(width/2, height/2, 300, 300);

  // right way. translate 0, 0 to where you want to 
  // draw, then draw at 0, 0
  //pushMatrix();
  //translate(width/2, height/2);
  //rotate(angle);
  //rect(0, 0, 300, 300);
  //popMatrix();

  // draw another rectangle to the right
  //pushMatrix();
  //translate(300, 0);
  //translate(width/2 + 300, height/2);
  //rotate(angle);
  /rect(0, 0, 300, 300);
  //popMatrix();

}

boolean sketchFullScreen() {
  return true;
}

