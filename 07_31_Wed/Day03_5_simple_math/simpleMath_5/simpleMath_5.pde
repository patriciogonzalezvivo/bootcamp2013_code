/*
Expression     Result      Explanation
 9 % 3            0          3 goes into 9 three times, with no remainder
 9 % 2            1          2 goes into 9 four times, with 1 as the remainder
 35 % 4           3          4 goes into 35 eight times, with 3 remaining
 */

void setup() {
  
  size(400, 500);
  background(0);
  noStroke();
  
  int r = color(255,0,0);
  int g = color(0,255,0);
  int b = color(0,0,255);

  
  // First lets look at some modulo operators.
  int mod1 = 9 % 3; // % 0
  int mod2 = 9 % 2; // % 1
  int mod3 = 35 % 4; // % 3

  println("Value of the remainder / modulo");
  println(mod1);
  println(mod2);
  println(mod3);
  
  // Here we add 1 to the values because we are going to multiply with them. 
  // We don't want a value 0 because then we wouldn't be able to see what we can create from it.
  // Anything multiplied by 0 is 0, so add 1 to normalize the values.
  
  mod1 += 1;
  mod2 += 1;
  mod3 += 1;
  
  println("We add 1 so we can use it");
  println(mod1 + mod2 + mod3);
  
  // Here we take the value of the modulo and use it to draw the Y coordinates of these lines
  // Look how the variables change the position of the line on the Y-axis.
  
  rectMode(CENTER);
  fill(r);
  rect(20, height/2, 20, 100 * mod1);
  
  fill(g);
  rect(width/2 - 20, height/2, 20, 100 * mod2);
  
  fill(b);
  rect(width - 40, height/2, 20, 100 * mod3);
}

