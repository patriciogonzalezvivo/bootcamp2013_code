//----------------------------------------------------
// DT Bootcamp 2013, Parsons the New School for Design. 
// Day 4, Example 6, Theme: If/Else if
// More advanced use of if, and else if.
// This is combined and built upon the previous knowledge of animation and mouse interaction
//----------------------------------------------------

//Declare variables
int xPos; //x position of circle
int yPos; //y position of circle

//Setup Function
void setup() {
  size(500, 500); //Size of our sketch's window
  xPos = width/2; //Initialize this variable to be half of the width of the window
  yPos = height/2; //Initialize this variable to be half of the height of the window
}

//Draw Function
void draw() {
  background(255); //Draw the background at the beginning of the draw loop in order to start with a new "frame"

  fill(0, 255, 0); //Set the fill to be green.

  if (mouseX > 2*width/3) { //Check to see if the x position of the mouse is greater than two-thirds of the window
    xPos++;  //If the previous statement is true, add 1 to the xPos every frame (move circle one pixel to the right)
  }

  else if (mouseX < width/3) { //If the previous statement is false, check to see if the x position of the mouse is less than one-third of the window
    xPos--; //Subtract 1 from xPos every frame (move the circle 1 pixel to the left)
  }

  else if (mouseX > width/3 && mouseX < width*2/3) { //If neither of the previous statements are true, check to see if the mouse is in the middle-third of the window
    fill(255, 0, 0); //Change the fill of the circle to be red. Notice that we do not move the circle.
  }
  
  ellipse(xPos, yPos, 50, 50); //Draw the circle according to the variables we declared earlier
}

