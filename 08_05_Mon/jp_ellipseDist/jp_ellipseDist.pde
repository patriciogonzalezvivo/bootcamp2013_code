void setup() {
  size(500, 200);
}

void draw() {
  // create a loop that runs 20 times
  // each time, we draw a circle slightly further
  // toward the right. the color of the circle
  // will be based on the distance from the mouse
  for (int i = 0; i < 20; i++) {
    // calculate the x position of the circle
    // based on the variable i, which is the counter
    // for the loop
    int circleX = i * 25;
    
    // calculate the distance between the mouse and the
    // circle we're about to draw
    float distance = dist(mouseX, mouseY, circleX, 100);
    
    // set the color based on the distance
    fill(255, distance, 255);
    
    // draw the circle
    ellipse(circleX, 100, 20, 20);
  }
}
