//  Let´s make some global variables to easy setup
//
float ballYPos;
float ballDirection = 1.0;
int ballRadio = 50;

void setup(){
  
  //  Let´s prepare all the things for the show
  //
  size(300,500);
  smooth();
  
  ballYPos = height*0.5;
}

void draw(){
  background(255);
  
  //  Bouncing 
  if ((ballYPos+ballRadio*0.5 > height) || (ballYPos-ballRadio*0.5 < 0)){
    ballDirection *= -1;
  }
  ball(width/2, ballYPos, ballRadio);
  
  /*
  // Eternal falling (module example)
  ball(width/2, ballYPos%height, ballRadio);
  */
  
  ballYPos += ballDirection;
}

void ball(float _x, float _y, int _radio){
  int gradientDetail = 10;  // How many circles have to make in order to 
  int bright = 55;          // Darker color
  
  float gradientFactor = (255-bright)/gradientDetail;
  float radioFactor = _radio/gradientDetail;
  
  float radio = _radio;
  
  noStroke();
  for (int i = 0; i < gradientDetail;i++){
    fill(bright);
    ellipse(_x,_y, radio, radio);
    
    bright += gradientFactor;
    radio -= radioFactor;
  }
}
