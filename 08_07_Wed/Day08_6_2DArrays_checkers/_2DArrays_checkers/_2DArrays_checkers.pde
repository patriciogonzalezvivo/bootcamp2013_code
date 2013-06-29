
PImage bg;
int[][] checkers = {
  {
    0, 1, 0, 1, 0, 1, 0, 1
  }
  , 
  {
    1, 0, 1, 0, 1, 0, 1, 0
  }
  , 
  {
    0, 1, 0, 1, 0, 1, 0, 1
  }
  , 
  {
    0, 0, 0, 0, 0, 0, 0, 0
  }
  , 
  {
    0, 0, 0, 0, 0, 0, 0, 0
  }
  , 
  {
    1, 0, 1, 0, 1, 0, 1, 0
  }
  , 
  {
    0, 1, 0, 1, 0, 1, 0, 1
  }
  , 
  {
    1, 0, 1, 0, 1, 0, 1, 0
  }
};

void setup() {
  frameRate(24);
  smooth();
  size(400, 400); //50x50 squares for boards
  bg = loadImage("checker_board.png");
}

void draw() {
  
  image(bg, 0, 0);
  fill(255,0,0);
  for (int i=0; i<8; i++) {
    for (int j=0; j<8; j++) {
      if(checkers[i][j]==1){
        ellipse(25+(0+1)*j*50,25+(0+1)*i*50, 40, 40);
      }
    }
  }
}

