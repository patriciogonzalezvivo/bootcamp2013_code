
// PImage_1. 

size(500, 330);

/* A class is a prototype from which objects are created. 
 It's a compilation made of certain data and methods (functions) 
 
 ** The first letter of a class name is usually uppercase 
 to separate it from other kinds of variables. 
 
 PImage = class, myImage = an object of 'PImage' class
 */

PImage myImage = loadImage("24470020.jpg"); 
image(myImage, 0, 0); // draw the image

