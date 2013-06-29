// Simple Math based on Ira Greenberg's
/*
title: fun with variables
 description: stepped radial gradient
 created: August 7, 2005
 by: Ira Greenberg
 */

// declare some global variables
int xpos;
int ypos;
// we create an interval variable to set the distance between values
int interval;
int gradientWidth; 
int gradientHeight;

void setup() {
  // set the sketch window size and background
  size(400, 400);
  background(0);
  smooth();
 
  // define variable values
  //
  // controls banding of gradient, since the highest value for RGB is 255, it is divided by 5, 
  // it can be divided by any number that corresponds to the number of objects you want to create
  interval = 255/5;
  
  // radial width
  gradientWidth = width;
  // radial height
  gradientHeight = height;
  
  //radial center pt
  // we divide the constant variable by 2 in order to get the center point of the sketch
  xpos = width/2;
  ypos = height/2;
  
  //turn off stroke rendering
  noStroke();
  //create ellipses
  //set fill color and render ellipse
  fill(interval);
  ellipse(xpos, ypos, gradientWidth, gradientHeight);
  
  fill(interval*2);
  ellipse(xpos, ypos, gradientWidth-interval, gradientHeight-interval);
  
  fill(interval*3);
  ellipse(xpos, ypos, gradientWidth-interval*2, gradientHeight-interval*2);
 
  fill(interval*4);
  ellipse(xpos, ypos, gradientWidth-interval*3, gradientHeight-interval*3);
  
  fill(interval*5);
  ellipse(xpos, ypos, gradientWidth-interval*4, gradientHeight-interval*4);
}

