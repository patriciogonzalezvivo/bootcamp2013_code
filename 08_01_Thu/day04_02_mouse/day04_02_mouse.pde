//----------------------------------------------------
// DT Bootcamp 2013, Parsons the New School for Design. 
// Day 4, Example 2, Theme: Mouse Interaction
// This sketch is built upon the previous. The idea is to gradually introduce the idea of mouse interaction in Processing.
// Start with directly substuting mouseX & Y for xPos, yPos. Explain the reasoning behind assigning mouseX to xPos1, etc. 
//----------------------------------------------------

//Declare variables
int xPos1; //x position of circle
int yPos1; //y position of circle
int rad1; //radius of circle

//Setup function
void setup() {
  size(500, 500); //Size of our sketch's window
  background(255); //Set the background color of the window to be white
  
  xPos1 = width/2; //Initialize this variable to be half of the width of the window
  yPos1 = height/2; //Initialize this variable to be half of the height of the window
  rad1 = 50; //Initialize the size of the circle to be 50 pixels
}

//Draw function
void draw() {
  xPos1 = mouseX; //Every frame, assign the x position to be the current position of the mouse in the x direction
  yPos1 = mouseY; //Every frame, assign the y position to be the current position of the mouse in the y direction
  fill(255, 0, 0); //Sets the fill of the circle to be red
  ellipse(xPos1, yPos1, rad1, rad1); //Draw the circle according to the variables we declared earlier
}

