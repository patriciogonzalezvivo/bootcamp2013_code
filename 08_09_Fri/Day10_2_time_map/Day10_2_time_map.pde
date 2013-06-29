PFont font;

float hourX;
float minuteX;
float secondX;

void setup() {
  size(300,300);
  noStroke();
  font = loadFont("Archer-Book-24.vlw");
}

void draw() {
  background(120);
  
  fill(240);
  textFont(font);
  
  text((hour() + ":" + minute() + ":" + second()), 10, 40); //write the hour, minutes, and seconds on the top-left of the screen
  // maping the hour(), total of 24: 0->23
  hourX = map(hour(),0,23,0,(width-10)); //map the current hour to an X position on the screen
  //
  minuteX = map(minute(),0,59,0,(width-10)); //map the current minute to an X position on the screen
  secondX = map(second(),0,59,0,(width-10)); //map the current second to an X position on the screen

  fill(255,200,0);
  rect(hourX,0,10,100); //draws a rectangle on the top of the screen with an X position based on the current hour
  fill(200,135,200);
  rect(minuteX,100,10,100); //draws a rectangle in the middle of the screen with an X position based on the current minute
  fill(164,220,240);
  rect(secondX, 200,10,100); //draws a rectangle on the bottom of the screen with an X position based on the current second

}

