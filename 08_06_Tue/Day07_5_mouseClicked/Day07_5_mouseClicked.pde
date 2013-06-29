//http://processing.org/reference/mouseClicked_.html

// Click within the image to change 
// the value of the rectangle after
// after the mouse has been clicked

int value = 0;

void draw() {
  fill(value);
  rect(25, 25, 50,50);
  //The mousePressed() function is called once after every time a mouse button is pressed. , 50);
}

void mouseClicked() {
  if(value == 0) {
    value = 255;
  } else {
    value = 0;
  }
}


