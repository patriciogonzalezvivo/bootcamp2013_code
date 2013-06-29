// Let's see now how math operators affect the values of different objects

void setup() {

  size(300, 300);
  background(255, 200, 255);
  smooth();
  noStroke();

  // We will be manipulating the Y value
  float posY = 50;

  // Another look at assignment operators
  fill(255 - posY); 
  ellipse(width/2, posY, 50, 50);
  println(posY); 

  // The = is not the regular "equals too", it means "assign value to a variable"
  // posY can be added by any number
  // like this
  posY = posY + 50; // meaning: posY = 50 + 50 = 100 
  fill(255 - posY);
  ellipse(width/2, posY, 50, 50);
  println(posY); 

  // or like this (called "add assign")
  posY += 50; // = 100 + 50 = 150
  fill(255 - posY);
  ellipse(width/2, posY, 50, 50);
  println(posY);

  //sometimes you want to just change the value by 1
  posY += 50; // = 200
  posY += 1; // = 201
  fill(255 - posY);
  ellipse(width/2, posY, 50, 50);
  println(posY);

  posY += 50; // = 251
  //but you can change by 1 also like this
  posY++; // 252
  fill(255 - posY);
  ellipse(width/2, posY, 50, 50);
  println(posY);
}

