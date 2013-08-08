int theta;

void setup() {
  size(500,500);
  colorMode(HSB,255);
  
  background(0);
  
  theta = 0;
}

void draw() {
  
  if (theta < 360) {
  
  pushMatrix();
  translate(width/2,height/2);
  rotate(radians(theta));
  stroke(random(255),255,255);
  int lineLength = int(random(100));
  line(-lineLength,0, lineLength, 0);
  popMatrix();
  
  theta++;
  
  drawOrbit();
  }
  
}

void drawOrbit() {
  
float x = cos(radians(-theta));
float y = sin(radians(-theta));

noStroke();
fill(random(255),255,255);

ellipse(width/2+125*x, height/2+125*y, 5, 5);
ellipse(width/2+150*x, height/2+150*y, 10, 10);
ellipse(width/2+200*x, height/2+200*y, 20, 20);
  
}


