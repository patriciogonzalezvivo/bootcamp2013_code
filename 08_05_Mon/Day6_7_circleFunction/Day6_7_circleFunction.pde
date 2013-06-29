// More Functions!

void setup() {
  size(500,500);
  smooth();
  background(255);
  
}

void draw() {
  
  //calls on the draw circle function with the numbers shown in the parens
  drawCircle(320, 250, 80, color(255,0,119));
  
  //again, but new numbers
  drawCircle(width/2, height/2, 150, color(0,138,255, 50));
}

//notice this function has 4 variable inputs that are referenced within the brackets
void drawCircle(int circX, int circY, int diameter, color c) {
  
  noStroke();
  fill(c);
  ellipse(circX,circY,diameter,diameter);
  
}
