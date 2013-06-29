int circleNum = 6;

int[] circleX = new int[circleNum];


void setup() {
  
  size(250, 100);
  smooth();
  noStroke();
  for (int i = 0; i < 6; i++) {
    circleX[i] = 30+(i*30);
  }
}


void draw() {
  background(0);
  // First for loop is to set the array up
  //creating 6 items
  for (int i = 0; i < 6; i++) {
    fill(255, i*50, 255);
    ellipse(circleX[i], 50, 10, 10);
  }
}












