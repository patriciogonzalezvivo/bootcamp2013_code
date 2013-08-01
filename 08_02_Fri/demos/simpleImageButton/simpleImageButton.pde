int buttonX;
int buttonY;
int buttonSize;

PImage cage;

boolean button;

void setup() {

  cage = loadImage("cage.jpg");
  size(cage.width, cage.height);

  imageMode(CENTER);

  buttonX = 10;
  buttonY = 10;
  buttonSize = 25;

  button = false;
}

void draw() {
  background(200);
  
  strokeWeight(1);
  
  if (button) {
    //draw image
    image(cage, width/2, height/2);

    fill(255, 0, 0);
    //draw button
    rect(buttonX, buttonY, buttonSize, buttonSize);
  }

  else {
    fill(255);
    rect(buttonX, buttonY, buttonSize, buttonSize);
  }
  
  if (mouseX > buttonX && mouseX < buttonX + buttonSize && mouseY > buttonY && mouseY < buttonY + buttonSize) {
    strokeWeight(3);
    rect(buttonX, buttonY, buttonSize, buttonSize);
  } 
}

void mouseClicked() {
  if (mouseX > buttonX && mouseX < buttonX + buttonSize && mouseY > buttonY && mouseY < buttonY + buttonSize) { 
    button = !button;
    println(button);
  }
}

