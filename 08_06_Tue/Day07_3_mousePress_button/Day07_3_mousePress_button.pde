// Click within the image and press
// the left and right mouse buttons to 
// change the value of the rectangle
void draw() {
  rect(25, 25, 50, 50);
}

void mousePressed() {
  if (mouseButton == LEFT) {
    fill(0);
    println("left");
  } else if (mouseButton == RIGHT) {
    fill(255);
    println("right");
  } else {
    fill(126);
  }
}


