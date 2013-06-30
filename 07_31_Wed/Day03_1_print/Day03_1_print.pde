void setup() {
 
 // set up our sketch size, background color, and smoothing 
 size(400, 400);
 background(225);
 smooth();
 
 // creating variables for the parameters of the ellipse we are going to draw
 //
 int circX = 200;
 int circY = 200; 
 int circW = 200;
 int circH = 200;
 
 noStroke();
 fill(50, 200, 255);
 // draw the ellipse using the variables
 ellipse(circX, circY, circW, circH);
 
 // use print() to send messages to the console. 
 // Here we use it to find out the values of the variables
 print("The circle is located at ");
 print(circX);
 print(" pixels in the X direction");
 
 // print() sends messages to the console in one continuous line
 // meaning you can spread out the messages in the sketch but then they
 // all appear together in the console.
 print(", ");
 print(circY);
 print(" pixels in the Y direction");
 
 print(" with a width of ");
 print(circW);
 print(" and a height of ");
 print(circH);
 print(".");
 
 
}
