//----------------------------------------------------
// DT Bootcamp 2013, Parsons the New School for Design. 
// Day 4, Example 3, Theme: Random & Animation
// This sketch touches on two topics at once: random and animation. Start by copying and pasting code for first circle.
// Show students how to alter names to create second circle. Initialize xPos2 etc. and explain random function and int()
// Continue by gradually introducing iterators (start with xPos = xPos + 1, xPos++, xPos+=3)
// Finish by adding background in draw function for animation
//----------------------------------------------------

//Declare variables
int xPos1; //x position of first circle
int yPos1; //y position of first circle
int rad1; //radius of first circle

int xPos2; //x position of second circle
int yPos2; //y position of second circle
int rad2; //radius of second circle


//Setup Function
void setup() {
  size(500, 500); //Size of our sketch's window
  background(255); //Set the background color of the window to be white
  
  xPos1 = width/2; //Initialize this variable to be half of the width of the window
  yPos1 = height/2; //Initialize this variable to be half of the height of the window
  rad1 = 50; //Initialize the size of the circle to be 50 pixels

  xPos2 = int(random(0,width)); //Initialize this variable to be a random number between 0 and the width of the window
  yPos2 = int(random(0,height)); //Initialize this variable to be a random number between 0 and the height of the window
  rad2 = 50;
}

void draw() {
  background(255); //Draw the background at the beginning of the draw loop in order to start with a new "frame"
  
  //first circle controlled by mouse
  xPos1 = mouseX; //Every frame, assign the x position to be the current position of the mouse in the x direction
  yPos1 = mouseY; //Every frame, assign the y position to be the current position of the mouse in the y direction
  fill(255, 0, 0); //Sets the fill of the circle to be red
  ellipse(xPos1, yPos1, rad1, rad1); //Draw the circle according to the variables we declared earlier

  //second circle controlled with incrementals
  xPos2+=3; //Every frame, move circle three pixels to the right (positive direction)
  fill(0, 255, 0); //Sets the fill of the circle to be green
  ellipse(xPos2, yPos2, rad2, rad2); //Draw the circle according to the variables we declared earlier
}

