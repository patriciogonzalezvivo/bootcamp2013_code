//collision detection thanks to Y. Huang Bootcamp team F

int ballXa = 15;
int ballYa = 100;
int ballXb = 140;
int ballYb = 15;
int xVelocitya = 5;
int yVelocitya = 5;
int xVelocityb = 7;
int yVelocityb = 5;
int diameter = 60;
 
void setup() {
  size(500,500);
  background(0);
  smooth();
}
 
void draw() {
  background(0);
  noStroke();
  fill(255, 0, 196);
  ellipse(ballXa, ballYa, diameter, diameter);
  fill(0, 172, 255);
  ellipse(ballXb, ballYb, diameter, diameter);
   
  ballXa += xVelocitya;
  ballYa += yVelocitya;
 
  ballXb += xVelocityb;
  ballYb += yVelocityb;
   
  if (ballXa >= 495 || ballXa <= 15){
   xVelocitya *= -1;
  }
   
  if (ballYa >= 495 || ballYa <= 15){
   yVelocitya *= -1;
     
  } 
    
  if (ballXb >= 495 || ballXb <= 15){
   xVelocityb *= -1;
  }
   
  if (ballYb >= 495 || ballYb <= 15){
   yVelocityb *= -1;
     
  }    
  
  // up until this point, it's just the regular bouncing balls
  // This is where the collision is being weitten:
 
  if (dist(ballXa, ballYa, ballXb, ballYb) <= diameter) {
  xVelocitya *= -1;
  yVelocitya *= -1;
  xVelocityb *= -1;
  yVelocityb *= -1;
  }
 
}

