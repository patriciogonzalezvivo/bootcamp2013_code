/*
// in this code we are using loadFont
 // click on Tools and choose create font from your directory
 // and choose the font and size
 // this will save the font to the data folder in your sketch folder
 // copy and paste the filename in the loadFont function
 */

//PFont is the name of the font class
//I create two instances of this class

PFont myFirstFont;
PFont mySecondFont;
int fontPosY = 40;

void setup() {

  size(500, 500);
  background(30, 30, 100);

  /* 
   loadFont() This function constructs a new font.
   Click on Tools => create font from your directory 
   and choose the font and size. This will save the font 
   to the data folder in your sketch folder. 
   Copy and paste the filename in the loadFont function
   */
  myFirstFont = loadFont("ACaslonPro-Italic-36.vlw");
  mySecondFont = loadFont("Helvetica-24.vlw");

  //textFont() makes it active, it's like applying color, or strokeWeight etc.
  textFont(myFirstFont);
  // text(...) writes to the sketch window

  text("Take a Bubble bath", 20, fontPosY);
  text("Look up at the stars", 20, fontPosY+30);
  text("Learn a new doodle", 20, fontPosY+60);

  fill(180);
  textFont(mySecondFont); // switch to a different font
  text("It's all going to be ok", 20, width-30);
}

void draw() {
}

