/* Nested If-Loops (aka if-loops inside of if-loops)
 - these are seen when the occurrence of one scenario produces the 
 possibility of multiple other scenarios.
 Ex:
 Start
 /           \
 scenarioA             senarioB       //preliminary if-loops
 /      \              /        \
 scenarioC  scenarioD    scenarioE    scenarioF     //nested if-loops
 
 Note: you are not limited to 2 sub-scenarios; theoretically there can be any number of if-loops 
 and nested if-loops.
 */


void setup() {
  size(500, 500);
  noFill();
}

void draw() {

  background(255);

  //if the mouse is on the left side of the canvas
  if (mouseX < width/2) {
    line(0, 0, width, height);
    //if the mouse is on the left side and the bottom
    if (mouseY > height/2) {
      ellipse(width/4, height/4, width/4, height/4);
    }
    //if the mouse is on the left side and the top
    else {
      rect(0, height/2, width/4, height/4);
    }
  }

  //if the mouse is on the right side of the canvas
  //for loops!
  
//  else {
//    line(width, 0, 0, height);
//    //if the mouse is on the right side and the top
//    if (mouseY<height/2) {
//      for (int i=width/2; i<width; i+=10) {
//        for (int j=height/2; j<height; j+=10) {
//          ellipse(i, j, 10, 10);
//        }
//      }
//    }
//    //if the mouse is on the right side and the bottom
//    else {
//      for (int i=width/2; i<width; i+=10) {
//        for (int j=0; j<height/2; j+=10) {
//          rect(i, j, 10, 10);
//        }
//      }
//    }
//  }

}


