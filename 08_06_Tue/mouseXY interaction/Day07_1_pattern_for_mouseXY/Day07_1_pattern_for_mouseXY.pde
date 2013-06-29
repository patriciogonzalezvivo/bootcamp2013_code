void setup(){
  
  size(500,500);
  stroke(255,0,255);
  noFill();
  smooth();
  
}

void draw(){
  
  background(255);
  
  for(int i=1; i < 10; i++){// 20 is the number of circles
    for(int j=1; j < 10; j++){
      ellipse(i*15,j*15,mouseX*5,mouseY*5); 
    }
  }
}
