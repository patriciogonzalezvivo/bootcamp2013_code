// by Vivian Xu

color [] c = new color [12];

color fillColor;

int w;
int h;
int a;

int counter;

int [] xpos = new int [12];
int [] graphHeight = new int [12];



void setup(){
  size(340, 400);
  frameRate(15);
  noStroke();
  smooth();
  background(0);
  
  a = 20;
  w = 20;
  
  counter = 0;
  
  // set colors for graph chart
  c[0] = color(86, 116, 185);
  c[1] = color(69, 140, 203);
  c[2] = color(126, 167, 216);
  c[3] = color(132, 147, 202);
  c[4] = color(136, 130, 190);
  c[5] = color(161, 135, 190);
  c[6] = color(244, 154, 194);
  c[7] = color(246, 152, 157);
  c[8] = color(247, 151, 122);
  c[9] = color(249, 173, 129);
  c[10] = color(253, 198, 138);
  c[11] = color(255, 247, 154);
  
  graphHeight[0] = -9*a;
  graphHeight[1] = 3*a;
  graphHeight[2] = 2*a;
  graphHeight[3] = 4*a;
  graphHeight[4] = -6*a;
  graphHeight[5] = -10*a;
  graphHeight[6] = -7*a;
  graphHeight[7] = 5*a;
  graphHeight[8] = 4*a;
  graphHeight[9] = 3*a;
  graphHeight[10] = 5*a;
  graphHeight[11] = 6*a;
  
  
  
}


void draw(){
  
  for(int i = 0; i < 12; i++){
    xpos[i] = i*w + 50;
    
    fill(c[i]);
    rect(xpos[i], 150 - graphHeight[i], w, graphHeight[i]);

  }

}
