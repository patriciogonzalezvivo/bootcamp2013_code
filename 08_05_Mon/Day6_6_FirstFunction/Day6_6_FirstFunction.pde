/*   Introducing the concept of a function

- A function is a "chunk" of code that can be referenced from the draw loop, 
and other functions.
- Functions are essential to keeping your code clean and organized.
- Additionally, you can pass variables to a function as shown below!
*/

void setup() {
  size(400, 400);
  smooth();
  ellipseMode(CENTER);
  rectMode(CENTER);
}

void draw() {
  background(255);
  drawBlueCircle();  //carries out steps in function written below before continuing with draw
  drawSquare(255, 0, 0);
}
//-------------------------------------------------
//It's generally a good practice to define functions
//underneath the draw loop.
//-------------------------------------------------

void ourFirstFunction() {  //executes code within brackets before going back to draw
  fill(0, 0, 255);
  ellipse(mouseX, mouseY, 50, 50);
}

void ourSecondFunction(int r, int g, int b){
  fill(r, g, b);
  rect(mouseX, mouseY, 20, 20);
}


