// Bézier sketch 2
// Based on the sketch from Ira Greenberg's, 
// Processing: Creative Coding and Computational Art
// Copyright © 2007 by Ira Greenberg

// Bézier path

void setup() {
  size(500, 500);
  background(255, 0, 255);
  // Here we use RectMode Center to create the control points later
  rectMode(CENTER);
  noFill();
  stroke(255);
  
// Bézier curves can also be strung together to form longer continuous curves. The following
  bezier(150, 100, 200, 50, 300, 50, 350, 100);
  bezier(350, 100, 400, 150, 350, 250, 350, 300);
  bezier(350, 300, 300, 350, 100, 250, 100, 400);
  
  // Commenting in Processing can be done in two ways, by using double slashes, like this
  // <----------- single line commenting
  
  // or like this
  
  /*
  This is Block Commenting, 
  everything between the symbols 
  is commented out
  */
  
  // Using commenting to hide reveal sections of code 
  
  // Uncomment the blocks of code to reveal anchor and control points of the bezier
  // set the color for the anchor and control points
  stroke(200, 200, 255);
  fill(255, 255, 0);
  
  /*
  // Control Points 1
  line(150, 100, 200, 50);
  rect(150, 100, 10, 10);
  ellipse(200, 50, 10, 10);
  line(350, 100, 300, 50);
  rect(350, 100, 10, 10);
  ellipse(300, 50, 10, 10);
  */
  
  /*
  // Control Points 2
  line(350, 100, 400, 150);
  rect(350, 100, 10, 10);
  ellipse(400, 150, 10, 10);
  line(350, 300, 350, 250);
  rect(350, 300, 10, 10);
  ellipse(350, 250, 10, 10);
  */
  
  /*
  // Control Points 3
  line(350, 300, 300, 350);
  rect(350, 300, 10, 10);
  ellipse(300, 350, 10, 10);
  line(100, 400, 100, 250);
  rect(100, 400, 10, 10);
  ellipse(100, 250, 10, 10);
  */
}

