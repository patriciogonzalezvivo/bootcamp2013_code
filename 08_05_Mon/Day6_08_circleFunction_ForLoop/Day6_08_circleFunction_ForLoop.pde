//----------------------------------------------------
// DT Bootcamp 2013, Parsons the New School for Design. 
// Day 6, For Loops and Functions
// Functions with for loops 
// http://processing.org/examples/functions.html
// http://processing.org/reference/for.html
//----------------------------------------------------

/* For-Loop w/ Function!
 - With this you are able to get repetition of a function with 
 variables that change according to the for-loops
 
 */

void setup() {

  size(500, 500);
  background(255);
  smooth();
}

void draw() {

  //draws a quanity of circles equal to the width of the sketch (500)
  for (int i = 1; i < width; i++) {
    //xPosition, yPosition, and diameter all = i^2
    drawCircle(i*i, i*i, i*i, color(255, 0, i*15));
  }
}

// Look at the function as a shell empty of values, that'll be filled in draw()

/*color - Datatype for storing color values. 
 I can use RGB or web #FFCC00 hexadecimal colors, 
 but then it's has to be all digits, 
 can't play with variables
 */
void drawCircle(float circX, float circY, int diameter, color c) {

  noFill();
  stroke(c);
  // This value is fixed, so no need to create a variable for it
  strokeWeight(2);
  ellipse(circX, circY, diameter, diameter);
}

