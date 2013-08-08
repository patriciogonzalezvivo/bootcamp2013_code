// Sketch by Patricio Gonzalez Vivo 

int count = 8;
float gravity = 0.1;

//  Make a bunch of arrays that hold all the information
//
float[] rad = new float[count];
color[] col = new color[count]; 
float[] xPos = new float[count];
float[] yPos = new float[count];
float[] xSpeed = new float[count];
float[] ySpeed = new float[count];

void setup() {
  size(800, 500);
  smooth();

  //  Give random parameters to all the 'balls properties'
  //
  for (int i = 0; i < count;i++) {
    rad[i] = random(10, 25);
    xPos[i] = random(0+rad[i], width-rad[i]);
    yPos[i] = random(0+rad[i], height-rad[i]);
    xSpeed[i] = random(-3, 3);
    ySpeed[i] = random(-5, 3);
    col[i] = color(random(255), random(255), random(255));
  }
}

void draw() {
  background(255);

  noStroke();

  for ( int i = 0; i < count; i++) {

    //  So, let´s start by check if it´s touching other balls... and if it´s 
    //  do the right collision reaction 
    //
    for ( int j = i; j < count; j++) {
      //  It´s important not to check data with it self
      //
      if (i != j) {
        float distance = dist(xPos[i], yPos[i], xPos[j], yPos[j]);

        if (distance <= (rad[i]+rad[j]) ) {
          yPos[i] -= ySpeed[i]*2.0;  // Make them go to previous position so they don't get stuck

          ySpeed[i] *= -0.95;
          ySpeed[j] *= -0.95;
        } 

        if (distance <= (rad[i]+rad[j]) ) {
          xPos[i] -= xSpeed[i]*2.0;  // Make them go to previous position 

          xSpeed[i] *= -0.95;
          xSpeed[j] *= -0.95;
        }
      }
    }

    //  Update the physics
    //
    xPos[i] += xSpeed[i];
    yPos[i] += ySpeed[i];
    ySpeed[i] += gravity;
    //  Bounce on walls if it have to
    //
    if ( (xPos[i] >= width-rad[i]) || (xPos[i] <= rad[i]) ) {
      xSpeed[i] *= -1.0;
    }

    if ( (yPos[i] >= height-rad[i]) || (yPos[i] <= rad[i]) ) {
      ySpeed[i] *= -0.95;
    }

    // Draw the balls
    //
    fill(col[i]);
    ellipse(xPos[i], yPos[i], rad[i]*2.0, rad[i]*2.0);
  }
}

