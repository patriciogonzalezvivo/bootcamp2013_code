/*
Expression     Result      Explanation
 9 % 3            0          3 goes into 9 three times, with no remainder
 9 % 2            1          2 goes into 9 four times, with 1 as the remainder
 35 % 4           3          4 goes into 35 eight times, with 3 remaining
 */

// Set up an array, don't worry about this now.
int arrayLength = 400;
int [] cycle = new int[400];

void setup() {
  smooth();
  size(400, 400);
  fill(0);
 
  // Drawing the forloop. Here we use a modulo operator to create a pattern. 
  for (int i = 0; i < arrayLength; i++) {
    cycle[i] += i + 5;
    println(cycle[i]);
    cycle[i] %= 5;
    println(cycle[i]);
    ellipse(i*10, 200, cycle[i]*1.5, cycle[i]*100);
    println();
  }
}

