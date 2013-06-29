// mousePressed function
// Click within the image to change 
// the value of the rectangle

int colorValue;

void setup() {
  size(400, 400);
  background(255);
  noStroke();
  rectMode(CENTER);
  
  colorValue = 0;
}

void draw() {
  fill(colorValue);
  rect(width/2, height/2,50, 50);
}

//FUNCTIONSSSSS...

void mousePressed() {
  //When there's an event and the mouse is pressed
  //and value == 0 (booleans!)
  if (colorValue == 0) {
    colorValue = 127;
  } 
  //When there's an event and the mouse is pressed
  //AND value == a number that is different than 0
  else {
    colorValue = 0;
  }
}

