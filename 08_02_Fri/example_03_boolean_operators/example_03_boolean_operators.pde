//----------------------------------------------------
// DT Bootcamp 2013, Parsons the New School for Design. 
// - booleans are a simple data type with only two states (true and false)
// - they make it much easier to build applications that have chronological or systematic steps. 
// This will become much more relevant when you have additional modes of interaction (mouse click, key press, etc.).
// Right now all we have is mouseX and mouseY, but a pseudocode example is as follows:
// ex:
// - Sketch starts with step1=true, step2=false, step3=false
// (in draw):
// - when done with step1:  step1=false, step2=true
// - when done with step2:  step2=false, step3=true
// and so on...
//----------------------------------------------------

int colorCounter;

boolean mouseOnRight;

void setup() {
  size (400, 400);
  background(255);

  mouseOnRight = false;
  colorCounter = 0;
}


void draw() {

  fill(255-colorCounter, 255-colorCounter, 255); //sets color based on colorCounter
  rect(0, 0, 400, 400); //draws rect with "current" color
  line(200, 0, 200, 400); //mid-line

  if (mouseX >= width/2 && mouseOnRight == false) {
    mouseOnRight = true; 
    /*the placement of this boolean (mouseOnRight) will ensure that colorCounter only 
     increases by 5 each time you cross the "mid-line".  If the boolean wasn't here the 
     counter would increase with each frame if you kept your mouse on the right side of 
     the midline.
     */
    colorCounter+=5;
  }
  
  if (mouseX < width/2 && mouseOnRight == true) {
    mouseOnRight = false;  //same as above
    colorCounter+=5;
  }
  
  println(colorCounter);
}

