size(300,200);
float value = 25;
float xPos = map(value, 0, 100, 0, 1000); 
ellipse(100, 100, 10, 10);
fill(255,0,0);
ellipse(xPos, 100, 10, 10);
print("xPos = " + xPos);

