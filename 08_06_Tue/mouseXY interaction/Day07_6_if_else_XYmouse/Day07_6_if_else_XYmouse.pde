void setup() {

  size(800, 400);
  noFill();
  smooth();
}

void draw () {

  background(200, 250, 60);
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);

  fill(255);

  if ((mouseX<width/2)&&(mouseY<height/2)) {
    ellipse(200, 200, 50, 50);
  }

  else {
    ellipse(600, 200, 50, 50);
  }
}

