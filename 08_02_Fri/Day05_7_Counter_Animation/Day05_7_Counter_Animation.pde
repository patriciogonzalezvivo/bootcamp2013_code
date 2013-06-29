/* Counter Animation */

int counter; //dictates movement - only variable

void setup() {
  size(400, 300);  
  frameRate(24); //you can adjust framerate to adjust speed of ball
  smooth();
  noStroke();
}

void draw() {

  fill(255); //set color to white
  rect(0, 0, width, height); // draws rectangle for background (each frame)

  //or use the background
  //background(255);
  fill(0); // set color to black

  ellipse(counter, 150, 10, 10); //draws circle at x-position based on time

  counter++; //you can also adjust the value added to counter to change the speed of the circle
  //  counter += 2;
}

