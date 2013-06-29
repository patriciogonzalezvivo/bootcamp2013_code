/* Gradients */

void setup() {
  size(255, 255); //255 to show full spectrum of blue-value
  noStroke(); //bc rectangles are 1 space wide, can't have a stroke or else everything will be the color of the stroke!
}

void draw() {

  //vertical gradient (white to blue)
//  for (int i=0; i<255; i++) { 
//    fill(255-i, 255-i, 255);  //fades from RGB(255,255,255) to RGB(0,0,255)
//    rect(i, 0, 1, 255); // One pixel rect
//  }

  //Horizontal black to blue
  for (int i=0; i<255; i++) {
    fill(0, 0, i+1);
    rect(0, i, width, 1);
  }

}

