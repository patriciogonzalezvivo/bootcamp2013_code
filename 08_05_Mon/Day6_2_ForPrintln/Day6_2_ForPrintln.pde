//----------------------------------------------------
// DT Bootcamp 2013, Parsons the New School for Design. 
// Day 6, For Loops and Functions
// Showing operation of a for loop through println()
// http://processing.org/reference/for.html
//----------------------------------------------------

//For-loop print

void draw() {
  for (int i=0;i<100;i+=5) {
    println(i);
  }
  noLoop(); //prevents draw from looping
}


