//----------------------------------------------------
// DT Bootcamp 2013, Parsons the New School for Design. 
//
// Day 5, Nested If-Loops (aka if-loops inside of if-loops)
//
// - these are seen when the occurrence of one scenario produces the 
// possibility of multiple other scenarios.
// Ex:
//                    Start
//                /           \
//      scenarioA               senarioB             //preliminary if-loops
//       /      \              /        \
// scenarioC  scenarioD    scenarioE    scenarioF    //nested if-loops
//
// Note: you are not limited to 2 sub-scenarios; theoretically there can be any number of if-loops 
// and nested if-loops.
//----------------------------------------------------

void setup() {
  size(500, 500);
  noFill();
}

void draw() {

  background(255);

  
  if (mouseX < width/2) {
    //if the mouse is on the left side of the canvas
    //
    line(0, 0, width, height);
    
    if (mouseY > height/2) {
      //if the mouse is on the left side and the bottom
    //
      ellipse(width/4, height/4, width/4, height/4);
    } else {
      //if the mouse is on the left side and the top
      //
      rect(0, height/2, width/4, height/4);
    }
    
  } else {
    
    //if the mouse is on the right side of the canvas
    //
    //
    
  }

}


