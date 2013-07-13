//----------------------------------------------------
// DT Bootcamp 2013, Parsons the New School for Design. 
// Day 8, Arrays
//
//  Random positions
//
//----------------------------------------------------

/*
  Arrays - Intro
 
 Just like how variables let us keep track of one piece of information over time,
 arrays let us keep track of many pieces of information over time. So you could
 have an array of datatypes (e.g., integers), an array of variables (symbols
 that represent data), or an array of classes (which you'll learn about later).
 
 Let's make some arrays to hold data about circles. As you go through this, think 
 about how you would have to code this if you couldn't do an array. (Hint:
 it would be a total pain.)
 */

/* Creating arrays: in order, we tell processing the data type (here, float), note
 that it's an array (with those brackets), give it a name (circleX), indicate
 that we're making a new array, indicate the data type again, and then--very important--
 note how many items will be in the array. You can substitute that number with a
 variable, which is nice because, if you want to change the number, you just
 change what the variable equals--not every instance of the number in the code.*/

int numCircle = 15; // change this to change the # of circles on screen. 
//Must be a whole number.

float[] circleX = new float [numCircle];
float [] circleY = new float [numCircle];

// now let's go into our setup loop

void setup() {
  size(500, 500); // declare the size of your sketch
  smooth(); // use smooth so that your circles are anti-aliased, i.e. not pixely
  noStroke(); // let's leave the stroke off. Comment this out to see it with stroke
  colorMode(RGB, 256); // optional: declare color mode (RGB, HSV, etc.) and the range

  /* now what you want to do is set up each circle. we have 15 circles in this case,
   which would make it a lot of work without an array and a for loop--you'd have to
   declare each x and y variable on their own, and then set each of them on their own.
   so let's use a for-loop to go through each item in the array instead.*/

  for (int i = 0; i < numCircle; i++) { // the first item in an array is 0--it is 0 dist from the start
    circleX[i] = random(width); // here, we put a random x position into the corresponding slot in circleX.
    // first time through, i = 0, and it put a random number in circleX[0].
    // the # in brackets is the index number--like a chapter # in a book--
    // which is different than the value held in it.

    circleY[i] = random(height); // same thing here.
  }
}


// now let's draw 'em.

void draw() {
  background(255, 255, 0); // background color
  fill(255, 105, 180, 200); // color to fill circles with. fourth value is alpha

  for (int i = 0; i < numCircle; i++) {
    //fill(255, i*30, 180, 200); // color to fill circles with. fourth value is alpha
    ellipse(circleX[i], circleY[i], i+20, i+20); // see? rather than having to set 15 ellipses to specific
    // x and y values, we can just move through a loop that
    // automatically draws an ellipse with those x and y
    // coordinates. in this case, the radius of the circle
    // is related to i as well. do the math out for a few of
    // them and the relationship will become clearer.
  }
}  

