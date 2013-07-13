//----------------------------------------------------
// DT Bootcamp 2013, Parsons the New School for Design. 
// Day 8, Arrays of strings
//
//----------------------------------------------------

/*
  Arrays - Other Data Types & Styles Of Filling 'Em
 
 Sometimes you don't want to fill your array with a number. Say you wanted
 to have an array of words instead, to make a Madlib or a story that
 can change or something. You can do that too, and usually the easiest way
 to do it is to declare it in the following manner.
*/

int numNames = 7; // how many slots we need our array to hold

// this time, we can tell the array exactly what we want rather than doing so
// through a for-loop.
String[] teacherNames = {"Jennifer", "Adiel", "Anthony", "Ricardo", "Owen", "Matt", "Patricio"};

// let's hold their x and y pos as well. but we'll define those in setup.
float[] teacherNamesX = new float [numNames];
float[] teacherNamesY = new float [numNames];

void setup() {
  size(700, 100); // size once more

  for (int i = 0; i < numNames; i++) {
    teacherNamesX[i] = 10 + i*100;
    teacherNamesY[i] = 50; // the Y position is going to be constant
  }
}


void draw() {
  background(255);

  /* how about we highlight a name if it is moused over? dist() will return the
   distance between two points. for mousing over, that means the location of
   your mouse and the location of the thing. */

  for (int i = 0; i < numNames; i++) {
    if (dist(mouseX, mouseY, teacherNamesX[i], teacherNamesY[i]) < 50) { // if the distance between two points. < 50...
      fill(255, 0, 0); // use a red fill...
      text(teacherNames[i], teacherNamesX[i], teacherNamesY[i]); // ... for the name at that index.
    } 
    else { // otherwise...
      fill(0); // use a black fill...
      text(teacherNames[i], teacherNamesX[i], teacherNamesY[i]); // ... for the name at that index.
    }
  }

}

