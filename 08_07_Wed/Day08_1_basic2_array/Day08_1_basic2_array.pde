// In this example we want to create an array
// with specific values.

int circleNum = 6;

/*
 tell processing the data type (here, int), note
 that it's an array (with those brackets), give it a name (circleX), indicate
 that we're making a new array, indicate the data type again, and then--very important--
 note how many items will be in the array. You can substitute that number with a
 variable, which is nice because, if you want to change the number, you just
 change what the variable equals--not every instance of the number in the code.
 */
 
int[] circleX = new int[circleNum]; //Declare, Create


void setup() {
  size(250, 100);
  smooth();
  noStroke();

  circleX[0] = 30;
  circleX[1] = 60;
  circleX[2] = 90;
  circleX[3] = 120;
  circleX[4] = 150;
  circleX[5] = 180;
}

void draw() {
  background(0);
  for (int i = 0; i < 6; i++) {
    fill(255, i*50, 255);
    ellipse(circleX[i], 50, 10, 10);
  }
}













