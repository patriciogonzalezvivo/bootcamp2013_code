float myAlpha; // 

void setup(){
  size(500,500);
  background(255); // sets the background to white
  noStroke(); // the shapes we draw won't have black outlines
}

void draw(){
  background(255); //redraws the background as white at the beginning of each frame
  myAlpha = map(mouseY, height, 0, 0, 255); // takes the OPPOSITE of the mouse height and maps it to myAlpha
  
  fill(255, 0, 0, myAlpha); //sets a red color with the alpha defined above. An alpha of 0 means the color is transparent, while an alpha of 255 means it's fully opaque.
  ellipse(width/2 , height/2 , width, height); //draws a circle with the color defined above
}
