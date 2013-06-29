/* FOR LOOPS
 - for loops are an essential part of saving time while coding!
 - Basic for-loops allow you to duplicate an action any number of times 
   while logically switching one variable input
 - they come in very handy for duplication of graphics, steps, and many other things
 */

void setup() {
  
  size(400, 400);
  noStroke();
  smooth();   
  background(255);
}

void draw() {

  // creates 10 circles spaced apart by 40 pixels that have diameters of 20 pixels
  for (int i = 0; i < 10; i++) {
    fill(0,0,200);
    ellipse(50*i, 40, 40, 40);
  }

  // creates 10 circles spaced apart by 20 pixels that have diameters of 10 pixels
  for (int i = 0; i < 10; i++) {
    fill(i*25);
    ellipse(30*i, 100, 20, 20);
  }

  // creates 10 circles spaced apart by 40 pixels that have diameters of 5 pixels
  for (int i = 0; i < 10; i++) {
    fill(30*i, i*40, 20, 50);
    ellipse(30*i, 200, 50, 50);
  }
}

//Note: try messing around with the numbers in these for loops and examine how the sketch changes.

