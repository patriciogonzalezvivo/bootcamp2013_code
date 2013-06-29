int bg_value = 0; //BLACK

void setup() {
  size(320, 240);
}

void draw() {
  //using the background in draw as an interactive/animation tool  
  background(bg_value); //0 - BLACK
}

void mouseMoved() {
  println("Mouse Moved. mouseX = " + mouseX + " mouseY = "+ mouseY);
}

void mousePressed() {
  
  bg_value = 255; // WHITE
  background(bg_value);
  println("Mouse Pressed ---------- mouseX = " + mouseX + " mouseY = " + mouseY);
}

void mouseReleased() {
  bg_value = 0; // BLACK
  println("Mouse Released ----------- mouseX = " + mouseX + " mouseY=" + mouseY);
}

void mouseDragged() {
  bg_value = 127; //GREY
  println("Mouse Dragged. mouseX = " + mouseX + " mouseY= " + mouseY);
}

//The mouseClicked() function is called once 
//after a mouse button has been pressed and then released.

void mouseClicked () {
  background(255, 0, 0); // RED
  println("Mouse Clicked!");
}

