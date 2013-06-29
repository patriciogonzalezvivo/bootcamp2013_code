// Creating a button with mouse operations and booleans

void setup() {

  size(500, 500);
  background(255, 240, 0);
  noStroke();
  smooth();
}

//The mousePressed is a system boolean, by default == false (meaning, mouse is not pressed)
// It's == true when mouse buttons are pressed

void draw() {

  ellipseMode(CORNER);
  ellipse(0, 0, width, height);
  println(mousePressed);

  if (mousePressed == true) {
    fill(0, 200, 255);
  } 
  else {
    fill(255, 0, 200);
  }
}

