void setup() {
  size(800, 600);
  fill(#BE51ED);
  noStroke();
  rectMode(CENTER);
}

void draw() {
  background(255);
  // calculate distance between mouse and center of window
  float distance = dist(mouseX, mouseY, width/2, height/2);
//  print(distance);
//  print(", ");
//  println(500-distance);

  // draw a circle with no border
  noStroke();
  fill(#BE51ED);
  ellipse(width/2, height/2, 500-distance, 500-distance);
  
  // draw a rect with no fill
  stroke(#BE51ED);
  noFill();
  rect(width/2, height/2, 500-distance, 500-distance);
  
}

