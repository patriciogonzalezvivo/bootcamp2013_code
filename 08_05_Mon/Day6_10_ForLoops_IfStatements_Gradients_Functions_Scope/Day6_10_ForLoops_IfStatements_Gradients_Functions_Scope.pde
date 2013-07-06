//----------------------------------------------------
// DT Bootcamp 2013, Parsons the New School for Design. 
// Day 6, For Loops and Functions
// Functions with for loops 
// http://processing.org/examples/functions.html
// http://processing.org/reference/for.html
//----------------------------------------------------


// A combination of the things we have covered today

//Y-Direction
int yPos = 200;  //vertical position of circles
int yVel = 1;  //amount of pixels and direction (+ or -) circles will move each frame

//X-Direction
 int xPos = 200;
 int xVel = 1;
 
 int diameter = 20;

void setup() {
  
  size(400, 400);
  frameRate(60);
  smooth();
  noStroke();
  
}

void draw () {
  
  //Using a white rect with 10% opacity to create a 'tail'
  fill(255, 10); 
  // try adjusting the alpha value to vary the gradient (the tail) of the circles
  rect(0, 0, 400, 400);
  
  fill(0); //set color back to black with full alpha

  for (int i=0; i < 4; i++) {
    
    //Y-Direction
    ellipse(80*(i+1), yPos, diameter, diameter);
    
    //X-Direction
    ellipse(xPos, 80*(i+1), diameter, diameter);  //this will draw a vertical
  }

  moveCircles(5); // Play with the number inside of the function to change the speed of the circles
}


void moveCircles(int speedMultiplier) {
  
// Y-Direction
    if (yPos == 10 || yPos == 390) { //checks to see if the circles are at the top or bottom of render window
      yVel = yVel*(-1); //if they are, changes the direction of the movement
    }
  
   yPos = yPos + speedMultiplier*yVel; //applies the movement to the position

// X-Direction
    if (xPos == diameter/2 || xPos == width-diameter/2) {
      xVel = xVel*(-1);
    }

  xPos = xPos + speedMultiplier*xVel;
}

