int timeOffMax = 500; //how many milliseconds the light should stay off before changing to on
int timeOnMax = 1500; //how many milliseconds the light should stay on before changing to off
int timeOffCurrent; //how long the light has been off (since it was last on)
int timeOnCurrent; //how long the light has been on (since it was last off)
int lastSavedTime;//last time the light was changed between on and off (or vice-versa)
Boolean lightIsOn = false;//boolean to see if the light is on or off

void setup() {
  size(400, 400);
  //when using millis(), the program actually will start timing the milliseconds
  //a few milliseconds after the program starts. Assigning last_saved_time here keeps the timer accurate.
  lastSavedTime = millis();
}

void draw() {
  background(200);
  
  if (lightIsOn == true) { //checks if the boolean "lightIsOn" is set to true
    fill(255, 255, 0); //tell the circle to be filled with yellow (because the light is on)
    
    timeOnCurrent = millis() - lastSavedTime; //find out how long the bulb has been on (since it was last turned on)

    if (timeOnCurrent > timeOnMax) { //test the amount of time the bulb has been on against the amount of time it should be on
      lightIsOn = false; //turn the light back off
      lastSavedTime = millis(); //set the time when the light was turned off to the current time
      println("switched off"); //prints a line letting us know the switch was turned off
    }
  } 
  else { //in this case else means "the opposite of (lightIsOn == true)", which can also be states as "(lightIsOn == false)"
    noFill(); //makes the circle empty
    
    timeOffCurrent = millis() - lastSavedTime; //find out how long the bulb has been off (since it was last turned off)
    
    if (timeOffCurrent > timeOffMax) { //test the amount of time the bulb has been off against the amount of time it should be off
      lightIsOn = true; //turn the light back on
      lastSavedTime = millis(); //set the time when the light was turned on to the current time
      println("switched on"); //prints a line letting us know the switch was turned on
    }
  }
  ellipse(200, 200, 100, 100); //draw the circle. If the light is off, it will be unfilled. If the ligth is on, it will be filled.
}

