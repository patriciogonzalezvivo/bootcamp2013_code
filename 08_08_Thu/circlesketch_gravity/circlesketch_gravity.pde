/* Bouncing Balls 
  JRF
 */

float circleX; // Float for the x position of the circle
float circleY; // Float for the y position of the circle

float xVel; // Float for the movement along the horizontal plane
float yVel; // Float for movement along the vertical plane

float gravity; // Gravity!

void setup() {
  size(500, 500); // 500x500 screen
  smooth(); // Smoothing the edges of the circle

  circleX = width/2; // Starting x position of our circle
  circleY = height/2; // Starting y position of our circle

  // We'll start the circle going to the right by using positive numbers
  xVel = 5; // Higher number -> faster movement. Horizontal.
  yVel = 2; // Higher number -> faster movement. Vertical.
  gravity = .3; // We'll set gravity to .3. We don't ever want this to be negative--
                // gravity is ALWAYS pulling us toward the bottom of the sketch,
                // i.e. DOWN the y-axis.
}

void draw() {
  background(0); // Paint over what we just drew to make an animation effect
  fill(255, 0, 255); // Let's fill it with purple...
  noStroke(); // ... and not have an outline.

  yVel = yVel + gravity; // Add gravity to the y velocity
  //it loops! meaning y velocity increases! meaning - it excellerates!
                         // If the velocity is positive: makes it bigger (falling down)
                         // If it's negative: makes it smaller (slowing down at top)
  circleX = circleX + xVel; // We increment the circle's x position by the x velocity
  circleY = circleY + yVel; // Same with the y position and y velocity


  /* Here's the meat of this sketch.
   If the circle's x position is greater than width, it's about to fly offscreen!
   In that case, its velocity is positive. If the circle's x position is less than
   0, then it's about to fly offscreen too! In that case, its velocity is negative.
   
   If we multiply 1 by -1, we get -1 -- the reverse.
   If we multiply -1 by -1, we get 1 -- the reverse.
   Whichever way it's going, we just turn it around!
   */
   
  if ((circleX > width) || (circleX < 0)) { // We're checking to see if it's about to fly off the left or right
    xVel = xVel * (-1); // And here's where we reverse it. -1 = keeps the same gravity, just flips it.
  }

  if ((circleY > height) || (circleY < 0)) { // Same idea with the y position.
    yVel = yVel * (-.85); // And here's where we reverse the y. We use something greater than -1 to dampen
  } // bouncing becomes'weaker'

  if (circleY > height) { // Prevents it from falling off the bottom of the screen
    circleY = height; // Resets it at height if it's about to fall past height
  }
  ellipse(circleX, circleY, 60, 60); // Don't forget to draw your ellipse!
}

