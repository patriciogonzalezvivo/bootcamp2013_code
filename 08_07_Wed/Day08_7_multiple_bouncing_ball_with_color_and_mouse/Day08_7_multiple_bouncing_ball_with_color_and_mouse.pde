float [] xpos = new float [4];  //draw 100 balls with different centers and different radiouses
float [] ypos = new float [4];

int [] r = new int[4];

int i;

float [] xspeed = new float[4];  //speed in x and y directions are arrays
float [] yspeed = new float[4];


void  setup() {
  size(700, 500);
  noStroke();
  frameRate(30);
  smooth();

  xpos[i] = width/(i+2);   //starting point of x and y for first circle, smallest circle
  ypos[i] = height/(i+2);

  for(int i = 0; i < 4; i++) {   //for loop runs through speed array
    xspeed [i] = (i+1)*5;
    yspeed [i] = (i+2)*4;
  }
}

void draw() {
  background(150);

  for(i = 0; i < 4; i++) {

    r [i] = (i +1) * 10;

    fill(0, 40);
    ellipse(xpos[i], ypos[i], r[i], r[i]);
    noStroke();

    xpos [i] = xpos [i] + xspeed[i];
    ypos [i] = ypos [i] + yspeed[i];

    if(xpos[i]> width - r[i]/2 || xpos[i]< r[i]/2) {
      xspeed[i] *= -1;
      fill(255, random(5, 95));
    }
    if(ypos[i] > height - r[i]/2 || ypos[i] < r[i]/2) {
      yspeed[i] *= -1;
      fill(255, random(5, 95));
    }

    if(dist(mouseX, mouseY, xpos[i], ypos[i])< r[i]/2) {
      xspeed[i] *= -1;
      yspeed[i] *= -1;
      fill(255, random(5, 95));
    }
  }
}

