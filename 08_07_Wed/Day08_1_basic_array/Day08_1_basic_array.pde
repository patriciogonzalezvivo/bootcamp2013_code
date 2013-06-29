/*
  Arrays - Ultra Intro
 
 With just one array
 
 In this example we want to create an array
 with specific values.
 
 tell processing the data type (here, int), note
 that it's an array (with those brackets), give it a name (circleX). 
 
 You can substitute that number with a variable, which is nice because, 
 if you want to change the number, you just change what the variable 
 equals--not every instance of the number in the code.
 */

// in this array I create 6 items and I fill them with values:
// item no.0 = 30, item no.1 = 60...
//In this example we'll assign values "manually" without a for loop
int[] circleX = { //Declare
  30, 60, 90, 120, 150, 180 //Assign
};

void setup() {
  size(250, 100);
  smooth();
  noStroke();
}

void draw() {
  background(0);
  for (int i = 0; i < 6; i++) {
    fill(255, i*50, 255);
    ellipse(circleX[i], 50, 10, 10);
    println(circleX[i]);
  }
}





