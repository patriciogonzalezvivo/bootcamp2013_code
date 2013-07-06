//----------------------------------------------------
// DT Bootcamp 2013, Parsons the New School for Design. 
//
//  Day 5, PImage.get();
//
//
//----------------------------------------------------

void setup() {
  size(600, 460);

  PImage myImage = loadImage("24470020.jpg");
  imageMode(CENTER);
  image(myImage, width/2, height/2); // draw myImage

  /* 
   Datatype for storing color values. 
   Colors may be assigned with get() 
   May be specified directly using hexadecimal notation 
   such as #FFCC00 or 0xFFFFCCOO. 
   */

  //Reads the color of any pixel or grabs a section of an image. 

  color getColor = myImage.get(160, 160); // (x,y)
  noStroke();
  fill(getColor); 
  rectMode(CENTER);
  rect(width/2, 40, myImage.width, 20);
}

