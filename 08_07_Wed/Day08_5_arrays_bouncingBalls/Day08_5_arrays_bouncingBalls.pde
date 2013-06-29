/*
  Arrays - Velocity & Fill
 
 If there's a datatype or a variable for it, chances are, you can use an 
 array to store it. Here, we'll use arrays to hold additional data about
 velocity (speed in a given direction) and fill. 
 */


int numCircle = 50; // change this to change the # of circles on screen. Must be a whole number.

// remember: datatype, [], name, "new," datatype, and # of things.
float[] r = new float [numCircle]; // r will hold r values for RGB color.
float[] g = new float [numCircle]; // same with g.

float[] circleX = new float [numCircle]; // x positions
float[] velX = new float [numCircle]; // x velocities (speed and direction along x axis)

float[] circleY = new float [numCircle]; // y positions
float[] velY = new float [numCircle]; // y velocities (speed and direction along y axis)


// now let's set these suckers up.
void setup() {
  size(500, 500); // declare the size of your sketch
  smooth(); // use smooth so that your circles are anti-aliased, i.e. not pixely
  noStroke(); // let's leave the stroke off. Comment this out to see it with stroke
  colorMode(RGB, 256); // optional: declare color mode (RGB, HSV, etc.) and the range

  for (int i = 0; i < numCircle; i++) {
    circleX [i] = random(width);
    circleY [i] = random(height);

    velX [i] = random(-3, 3); // the - means that some will go to the left, and others to the right.
    velY [i] = random(-5, 5); // same here, but with up and down.
  }
}


// now let's draw 'em.
void draw() {
  background(255, 192, 203); // background color

  for (int i=0; i<numCircle; i++) { 
    circleX[i]+=velX[i]; // we'll add the x velocity to the x position...
    circleY[i]+=velY[i]; // and the y velocity to the y position. this will cause movement.

    if ((circleX[i]<0)||(circleX[i]>width)) { // if either the xPos is < 0, or the xPos is > width (i.e. it's about to go
                                              // offscreen on either the left or right side...
      velX[i]=velX[i]*-1; // *-1 velocity -- basically, reverse it.
    }

    if ((circleY[i]<0)||(circleY[i]>height)) { // same for height. if it's about to go off the top or bottom...
      velY[i]=velY[i]*-1; // reverse its direction.
    }

    if ((circleY[i]>height || circleY[i] < 0)) { // if the y position is > height or < 0
      r [i] = random(50, 255); // set a new r
      g [i] = random(100, 255); // and a new g
    }
    fill(r[i], g[i], 150, 150); // in any case, fill the circle with the relevant r and g values (b is already 150)
    ellipse(circleX[i], circleY[i], i+10, i+10); // and draw yer circles.
  }
}  

