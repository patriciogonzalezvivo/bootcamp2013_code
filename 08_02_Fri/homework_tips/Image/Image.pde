PImage groupPhoto;

void setup(){
  size(480,640);
  groupPhoto = loadImage("photo.jpg");
}

void draw(){
  background(0);
  image(groupPhoto,0,0);
  
  color c = groupPhoto.get(mouseX,mouseY); 
  fill(c);
  noStroke();
  rectMode(CENTER);
  rect(mouseX,mouseY,50,50);
  fill(0);
  textAlign(CENTER,TOP);
  text(red(c)+","+green(c)+","+blue(c),mouseX,mouseY+50);
}
