//from Daniel SHiffman Learning Processing

float x = 100; // x location
float y = 10; // y location
float speed = 0;  // speed of square
float gravity = 0.2; //small number (0.1) because this
//acceleration accumulates over
//time, increasing the speed.

void setup() {
  size(200, 200);
}
void draw() {
  background(255);
  fill(0);
  noStroke();
  rectMode(CENTER);
  rect(x, y, 10, 10);
  y = y + speed; // add speed to location
  speed = speed + gravity; // add gravity to speed. Increments with every frame
  println("speed =" + speed);
 
  if ((y > height)||(y < 0)) {
    if (y > height) {
      y = height;
    }
    speed = speed * -0.75; // multiplying by -0.95 instead of -1
    //slows down the square each time it bounces (by decreasing speed)
  }


  // For those who really hates this tiny bouncing at the end
  // activate this piece of code:

  //  if (y > height - 7 && speed < 0.5 && speed > -0.5) { 
  //    speed = 0;
  //    y = height - 5;
  //  }

  println("y = " + y);
}







