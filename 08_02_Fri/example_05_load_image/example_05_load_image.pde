//----------------------------------------------------
// DT Bootcamp 2013, Parsons the New School for Design. 
//
//  Day 5, PImage, loadImage() and image()
//  Declare, load and draw
//
//  http://processing.org/reference/PImage.html
//  http://processing.org/reference/loadImage_.html
//  http://processing.org/reference/image_.html
//
//----------------------------------------------------

size(500, 330);

PImage myImage = loadImage("24470020.jpg"); 
image(myImage, 0, 0); // draw the image

