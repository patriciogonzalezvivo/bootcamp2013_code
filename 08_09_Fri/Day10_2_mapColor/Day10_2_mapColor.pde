float myRed; // amount of red in our color
float myGreen;  // amount of green in our color

void setup(){
  size(500,500);
  background(255); // sets the background to white
  noStroke(); // the shapes we draw won't have black outlines
}

void draw(){
  
  myRed = map(mouseX, 0, width, 0, 255); // takes the mouseX position (horizontal mouse position) and maps it to a number between 0 and 255, which will set how much red our color has
  myGreen = map(mouseY, 0, height, 0, 255); // takes the mouseX position (vertical mouse position) and maps it to a number between 0 and 255, which will set how much green our color has
  
  fill(myRed, myGreen, 100); //sets the color using the red and green values we received above. This color always uses 100 for its blue value.
  ellipse(width/2 , height/2 , width, height); //draws a circle using the color set above
}
