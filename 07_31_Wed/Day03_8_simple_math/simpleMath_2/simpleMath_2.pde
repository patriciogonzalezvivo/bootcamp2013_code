// Let's see now how math operators affect the values of different objects

void setup() {

  size(800, 500);
  background(100);
  smooth();
  
  // this is the variable we will be manipulating with different
  // +, -, *, /
  int startingPoint = width/2;
  float stepChange = 2;

  // With these four ellipses we can see how addition affects the X value
  noStroke();
  
  fill(200, 0, 200); // MAGENTA
  // This is our default circle
  ellipse(startingPoint, 50, 100, 100); 
  // We print out the value to see the change numerically
  // Control
  println("Control: " + startingPoint);
  
  fill(0, 255, 255); //CYAN
  ellipse(startingPoint + stepChange, 150, 100, 100);
  // Addition
  println("Addition: " + startingPoint + stepChange);
  
  fill(0, 255, 0);//GREEN
  ellipse(startingPoint - stepChange, 250, 100, 100);
  // Subtraction
  println("Subtraction: " + (startingPoint - stepChange));
  
  fill(255, 255, 0); //YELLOW
  ellipse(startingPoint * stepChange, 350, 100, 100);
  // Multiplication
  println("Multiplication: " + startingPoint * stepChange);
  
  fill(0);//BLCK
  ellipse(startingPoint / stepChange, 450, 100, 100);
  // Division
  println("Division: " + startingPoint / stepChange);
  
}

