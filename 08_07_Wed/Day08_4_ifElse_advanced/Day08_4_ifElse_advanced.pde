/* 
  If/Else - Nested
  
  You can put if-statements inside of for-loops inside of if-statements...
  basically, if your brain can handle it, Processing almost certainly can.
  These require a little more attention than regular loops, but they're
  great for testing several things at once. Use these as a way to practice
  working through the logical implications of your statements.
*/

void setup() {
 size(500, 500); // size is 500x500
 smooth(); // smooth the circles
 noStroke();
}

void draw() {
 background(0); // let's set the background to 0
 if (mouseX < width/2) { // if the mouse xPos is less than half the width of the sketch
  if (mouseY < height/2) { // and if the mouse yPos is less than half the height of the sketch
   ellipse(width/4, height/4, 50, 50); // draw an ellipse here
  } else {  // but if the yPos is greater than half the height of the sketch
    ellipse (width/4, height*.75, 50, 50); // draw it here instead
  }
 } else { // but if the xPos is greater than half the width of the sketch
  if (mouseY < height/2) { // and the yPos is less than half the height of the sketch
   ellipse(width*.75, height/4, 50, 50); // draw the ellipse here
  } else { // but if the yPos is greater than half the ehight of the sketch
    ellipse(width*.75, height*.75, 50, 50); // draw it here instead
  }
 }
} // phew!

void mouseReleased() { // if the mouse has been released...
  fill(random(255), random(255), random(255)); // fill it with random colors 
}
