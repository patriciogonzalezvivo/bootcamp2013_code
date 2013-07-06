//----------------------------------------------------
// DT Bootcamp 2013, Parsons the New School for Design. 
// Day 6, For Loops and Functions
// Basic For Loop
// http://processing.org/reference/for.html
//----------------------------------------------------


void setup () {
  size(300, 300);
}
void draw() {
  noFill();
  for (int i = 0; i < 6; i++) {
    ellipse(width/2, height/2, i*50, i*50);
  }
}

