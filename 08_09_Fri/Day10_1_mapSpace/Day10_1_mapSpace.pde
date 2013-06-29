float circleOneX; //the X position of the first circle
float circleTwoX; //the X position of the second circle
float circleThreeX; //the X position of the third circle

void setup() {
  size(500, 500); //sets the size of the window to 500 by 500
  smooth();
  noStroke();
}

void draw() {
  background(255, 255, 255); //sets the background to white before drawing anything else
  
  fill(0,200,200);
  rect(0, 200, 100, 50); //draws the first and smallest rectangle
  rect(0, 300, 200, 50); //draws the second, medium-sized rectangle
  rect(0, 400, width, 50); //draws the third and biggest rectangle

  circleOneX = map(mouseX, 0, width, 0, 100); //updates the X position of the first circle by mapping the mouse position to a 100 pixel space
  circleTwoX = map(mouseX, 0, width, 0, 200); //updates the X position of the second circle by mapping the mouse position to a 200 pixel space
  circleThreeX = map(mouseX, 0, width, 0, 500); //updates the X position of the third circle by mapping the mouse position to a 300 pixel space
  
  fill(200,0,0);
  ellipse(circleOneX, 225, 10, 10); //draws the first circle inside of the first rectangle
  ellipse(circleTwoX, 325, 10, 10); //draws the first circle inside of the first rectangle
  ellipse(circleThreeX, 425, 10, 10); //draws the first circle inside of the first rectangle
  }

