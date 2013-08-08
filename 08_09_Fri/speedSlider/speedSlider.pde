float posX;
int size;
float speed;

int slideBarX;
int slideBarY;
int slider;
int slideBarWidth;

void setup() {
  
  size(500,500);
  
  posX = random(width);
  speed = 1;
  size = 50;
  
  slideBarX = 25;
  slideBarY = 25;
  slideBarWidth = 100;
  slider = 25;
  
}

void draw() {
  background(255);
  
  if (posX > width+size/2) {
    posX=-size/2;
  }
  
  speed = map(slider, slideBarX, slideBarX+slideBarWidth, 0, 10);
  
  posX+=speed;
  
  fill(255,0,0);
  ellipse(posX,height/2, size, size);
  
  slideBar();
}

void slideBar() {
  
  if(mouseX>slider-5 && mouseX < slider+10 
  && mouseY > slideBarY && mouseY < slideBarY+25
  && mousePressed) {
    slider = mouseX;
  }
  
  if (slider >= slideBarX+slideBarWidth-5) {
    slider = slideBarX+slideBarWidth-5;
  }
  
  if (slider <= slideBarX) {
    slider = slideBarX;
  }
 
 //Draw slide bar outline
 fill(255);
 rect(slideBarX, slideBarY, slideBarWidth, 25);
 
 //Draw slider
 fill(0);
 rect(slider, slideBarY, 5, 25);
  
}
