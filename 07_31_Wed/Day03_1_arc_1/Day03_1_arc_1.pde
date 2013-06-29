void setup() {
  // set size and background color
  size(400, 400);
  background(255);
  
  // Arc is a tool that alows you to go on an elliptical path
  // allowing you to specify where on the ellipse you start and stop
  // arc, agurments:
  // (  x,  y,  width,  height,  start, stop  )
  // Starting and stopping is done in Radians
  // for more on radians, go to http://en.wikipedia.org/wiki/Radian
  // 0 degrees = 0 radians (symbol is omitted)
  // 90 degrees = PI / 2
  // 180 degrees = PI
  // 270 degrees = 3 * PI / 2
  // 360 degrees = 2 * PI 
  
  // set fill color
  fill(255, 0, 200);
  //First arc
  arc(200, 200, 300, 300, 0, HALF_PI);
  
  // set fill color
  fill(255, 255, 0);
  // set the stroke color
  stroke(255, 0, 200);
  //Second arc
  arc(200, 200, 300, 300, PI/2, PI);
  
  // set fill color
  fill(0, 255, 255);
  // set the stroke color
  stroke(150);
  //Third arc
  arc(200, 200, 300, 300, PI, TWO_PI-PI/2);
  
  // you can remove the fill as well
  noFill();
  //Fourth arc
  arc(200, 200, 300, 300, TWO_PI-PI/2, TWO_PI);
  
}

