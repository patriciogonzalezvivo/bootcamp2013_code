//----------------------------------------------------
// DT Bootcamp 2013, Parsons the New School for Design. 
// Day 9, Arrays Continued
// More complicated snake to review arrays
// http://www.processing.org/reference/Array.html
//----------------------------------------------------

/* 
 Arrays - Snake
 
 Using regular arrays means that we can only store the defined # of items.
 You know how we do things like numCircles = 50? That menas the array will
 only store 50 pieces of information. We can bump that up if we want more,
 of course--but sometimes it's nice to have less info being stored and
 displayed rather than more. 
 
 This is a slightly altered example from Daniel Shiffman's Processing book 
 that lets you draw a snake with a tail that follows your mouse.
 */

int numPos = 50; // the number of positions we're holding
int[] xPos = new int[numPos]; // array of x positions
int[] yPos = new int[numPos]; // array of y positions

void setup() {
  size(500, 500); // define the size of your sketch
  smooth(); // when dealing with circles, it's nice to use smooth();

  // now let's initialize our array by setting all the elements to zero.
  for (int i = 0; i < numPos; i++) {
    xPos[i] = 0; 
    yPos[i] = 0;
  }
}


void draw() {
  background(255);
  
  // Shift the array elements down one spot via a for-loop.
  for (int i = 0; i < numPos-1; i++) { // Note: this will stop at the 2nd to last element!
   xPos[i] = xPos[i+1]; // so if i = 1, xPos at index 1 will = xPos at index 2, and so on.
   yPos[i] = yPos[i+1]; // same here 
  }
  
  // We do the above so we can stick new information in the slot we just
  // opened up.
  xPos[numPos-1] = mouseX;
  yPos[numPos-1] = mouseY;
  
  // With all this information, you draw ellipses at all those points.
  for (int i = 0; i < numPos; i++) {
   fill(255, random(255), random(255)); // color is tied to i, and the rest is set random
   ellipse(xPos[i], yPos[i], i, i); // size and position also tied to i
  }
}

