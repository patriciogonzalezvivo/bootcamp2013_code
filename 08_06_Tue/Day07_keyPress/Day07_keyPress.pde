

void setup(){
  size(200,200);
}

void draw() {
}

void keyPressed() {
  if (key == 'a') {
    println("a");
  }
  else if (key == 'b') {
    println("b");
  } 
  else if (key == 'c') {
    println("c");
  }
  else if (key == ENTER) {
    println();
  }

  else if(key == TAB) {
    println("TAB");
  }
  else if(keyCode == UP) {
    println("UP");
  }
  else if(keyCode == DOWN) {
    println("DOWN");
  }
  
  if ((key =='o') || (key == 'O')){
    
      ellipse(mouseX,mouseY,10,10);
}
  }

