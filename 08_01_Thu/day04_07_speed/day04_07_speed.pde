//----------------------------------------------------
// DT Bootcamp 2013, Parsons the New School for Design. 
// Day 4, Example 7, Theme: "Speed"
// Introduces the concept of "speed" in animation
// The x and y positions of objects do not need to be directly manipulated.
// You can use a separate variable to change the position of objects, which makes it easier to control their movements.
//----------------------------------------------------

//Declare variables
int xPos; //x position of circle
int yPos; //y position of circle
int speed; //variable to control how fast the circle will move

//Setup Function
void setup() {
  size(500, 500); //Size of our sketch's window
  xPos = width/2; //Initialize this variable to be half of the width of the window
  yPos = height/2; //Initialize this variable to be half of the height of the window
  speed = 2; //Initialize the "speed" to be 1. This can be changed to move the circle faster or slower.
}

//Draw Function
void draw() {
  background(255); //Draw the background at the beginning of the draw loop in order to start with a new "frame"

  fill(0, 255, 0); //Set the fill to be green.

  if (mouseX > 2*width/3) { //Check to see if the x position of the mouse is greater than two-thirds of the window
    xPos+=speed; // Instead of directly changing the xPos, we can add speed. This will increase the xPos according to the value of the variable speed that we declared earlier.
  }
  else if (mouseX < width/3) { //If the previous statement is false, check to see if the x position of the mouse is less than one-third of the window
    xPos-=speed; // Instead of directly changing the xPos, we can subtract speed. This will increase the xPos according to the value of the variable speed that we declared earlier.
  }

  else if (mouseX > width/3 && mouseX < width*2/3) { //If neither of the previous statements are true, check to see if the mouse is in the middle-third of the window
    fill(255, 0, 0); //Change the fill of the circle to be red. Notice that we do not move the circle.
  }
  
  ellipse(xPos, yPos, 50, 50); //Draw the circle according to the variables we declared earlier
}
