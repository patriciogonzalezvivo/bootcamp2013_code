/*   Introducing the concept of a function

- A function is a unique procedure that can be referenced from the draw loop, 
and other functions.
- Functions are very handy for keeping your code clean and organized. For example, 
your draw loop could be entirely comprised of your pseudocode, and all of the 
number crunching could exist inside of the functions that are listed in your draw loop.
- Additionally, you can pass variables to a function as shown below!
*/

void setup() {
  size(400, 400);
  smooth();
  ellipseMode(CENTER);
  background(255);
  fill(0, 0, 255);
}

void draw() {
  ourFirstFunction(200);  //carries out steps in function written below before continuing with draw
  //the # 200 is used as (int yPos) when carrying out the steps inside of the function
}

//This function has 1 variable that is referenced within the brackets

void ourFirstFunction(int yPos) {  //executes code within brackets before going back to draw
  ellipse(200, yPos, 200, 200);
}

