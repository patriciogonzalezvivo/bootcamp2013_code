void setup() {

  // As a shortcut, a variable can be declared and assigned on the same line:
  int x = 50;
  float y = 12.6;
  boolean b = true;
  String s = "sasquatch";

  println(x);
  println(y);
  println(b);
  println(s);
  
  println();
  
  // You can use println to combine statements
  println(s + ", " + b + ", " + x + ", " + y);
  
  println();

  /*
The Processing language has built-in variables for storing commonly used data. The
   width and height of the display window are stored in variables called width and
   height. If a program doesn’t include size(), the width and height variables are both
   set to 100. Test by running the following programs*/

  println(width + ", " + height); // Prints "100, 100" to the console
}

