//----------------------------------------------------
// DT Bootcamp 2013, Parsons the New School for Design. 
// Day 4, Example 1, Theme: Structure
// This sketch is simply to show the basic structure of a Processing sketch.
// Ideally this would be typed from scratch.
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
  fill(255, 0, 0); //Sets the fill of the circle to be red
  ellipse(xPos1, yPos1, rad1, rad1); //Draw the circle according to the variables we declared earlier
}

