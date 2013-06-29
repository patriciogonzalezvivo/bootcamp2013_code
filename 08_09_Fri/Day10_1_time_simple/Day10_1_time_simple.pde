//write the hour, minutes, and seconds on screen

PFont font;

void setup() {
  size(300,300);
  font = loadFont("Archer-Book-24.vlw");
}

void draw() {
  background(255);
  fill(0);
  textFont(font);
  
  text((hour() + ":" + minute() + ":" + second()), 100, 150); 
  
}
