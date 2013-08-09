int total = 100;
float[] hValues = new float[total];

void setup(){
  size(800,500);
  smooth();
  
  for(int i = 0; i < total; i++){
    hValues[i] = random(0, height);
  }
}

void draw(){
  background(0);
  
  for(int i = 0; i < total-1; i++){
    if( hValues[i] < hValues[i+1]){
      //  Swap the values
      float container = hValues[i];
      hValues[i] = hValues[i+1];
      hValues[i+1] = container;
    }
  }
  
  noStroke();
  rectMode(CENTER);
  for(int i = 0; i < total; i++){
    rect( width/total*i, height/2, width/(total+1), hValues[i] );
  }
}
