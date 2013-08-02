float button_x, button_y, button_width, button_height;
boolean button_pressed;
String button_text;
PFont button_font;

void setup() {
  size(800, 600);

  button_width = 100;
  button_height = 30;
  button_x = width/2 - button_width/2;
  button_y = height/2 - button_height/2;
  button_text = "?";
  button_font = loadFont("Helvetica-14.vlw");
}

void draw() {
  
  if ( button_pressed ){
    fill(0);
  } else { 
    fill(255);
  }
  rect(button_x, button_y, button_width, button_height,10,10,10,10);
  
  if ( !button_pressed ){
    fill(0);
  } else { 
    fill(255);
  }
  textFont(button_font);
  textAlign(CENTER,CENTER);
  text(button_text,button_x+button_width*0.5,button_y+button_height*0.5);
}

void mousePressed(){
  println("Mouse have been Pressed");
  if ( (mouseX > button_x) && (mouseX < button_x+button_width) &&
      (mouseY > button_y) && (mouseY < button_y+button_height)) {
        button_pressed = !button_pressed;
    }
}

void mouseReleased(){
  println("Mouse have been released");
}

void mouseDragged(){
  println("Mouse have been Dragged");
}

void mouseMoved(){
  println("Mouse have been Moved");
}

void keyPressed(){
   button_text += key;
}

void keyReleased(){
}
