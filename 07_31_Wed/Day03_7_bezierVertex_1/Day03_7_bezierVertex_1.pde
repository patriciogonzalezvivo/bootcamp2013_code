// Bézier sketch
// Based on the sketch from Ira Greenberg's, 
// Processing: Creative Coding and Computational Art
// Copyright © 2007 by Ira Greenberg

size(400, 400);

// Working with Bezier curves requires an understanding of how they work
// each anchor point has 2 control points
// the distance of the control points to the anchor point affects the direction
// of the curve. It's arguments are:
// bezier(x1, y1, cx1, cy1, cx2, cy2, x2, y2)
background(255, 255, 150);
smooth();
// plot curve
stroke(0);
noFill();
bezier(150, 300, 100, 100, 300, 100, 250, 300);
// draw control points connected to anchor points
fill(255, 255, 255);
stroke(150, 150, 255);
line(150, 300, 100, 100);
line(300, 100, 250, 300);
// control points
ellipse(100, 100, 10, 10);
ellipse(300, 100, 10, 10);
// anchor points
rectMode(CENTER);
rect(150, 300, 10, 10);
rect(250, 300, 10, 10);
