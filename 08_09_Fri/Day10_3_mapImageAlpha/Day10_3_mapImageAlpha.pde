float myAlpha;
PImage before;
PImage after;

void setup(){
  size(1201,900);
  background(255); // sets the background to white
  noStroke(); // the shapes we draw won't have black outlines
  
  before = loadImage("before.png");  //load the background
  after = loadImage("after.png");   //load the layer we'll mess with
  
  after.resize(1201,900);
  
}

void draw(){
  background(before); //redraws the background as white at the beginning of each frame
  myAlpha = map(mouseY, height, 0, 0, 255); // takes the OPPOSITE of the mouse height and maps it to myAlpha
  
  tint(255, 255, 255, myAlpha);   //The image will have the alpha defined above. An alpha of 0 means the color is transparent, while an alpha of 255 means it's fully opaque.
  image(after, 3, 3);       //Places the image
}
