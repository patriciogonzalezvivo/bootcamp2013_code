//----------------------------------------------------
// DT Bootcamp 2013, Parsons the New School for Design. 
// Day 5, NOT 
// http://processing.org/reference/logicalNOT.html
//----------------------------------------------------

boolean a; 

void setup() {

  a = false;

  if (!a) { // Inverts the Boolean value meaning a = true; 
    rect(30, 20, 50, 50);
  } 

  a = true;

  if (a) { 
    line(20, 10, 90, 80); 
    line(20, 80, 90, 10);
  }
}

