void setup() {
 
 // set up our sketch size, background color, and smoothing 
 size(400, 400);
 background(225, 225, 225);
 smooth();
 
 // creating variables for the parameters of the ellipse we are going to draw
 //
 int circX = 200;
 int circY = 200; 
 int circW = 200;
 int circH = 200;
 
 noStroke();
 fill(255, 50, 255);
 // draw the ellipse using the variables
 ellipse(circX, circY, circW, circH);
 
 // use println() to send messages to the console. 
 // Here we use it to find out the values of the variables
 println("The circle is located at " + circX + " pixels in the X direction");
 
 // you could also use println() to create space between messages
 println();
 println("The circle is located at ");
 println(circX);
 println("pixels in the X direction");
 println();
 
 // Ideally you can use println() to verify values on variables that you use
 // You can use println to combine statements
 println("Circle X: " + circX + " px");
 println("Circle Y: " + circY + " px");
 println("Circle Width: " + circW + " px");
 println("Circle Height: " + circH + " px");
 
 
}
