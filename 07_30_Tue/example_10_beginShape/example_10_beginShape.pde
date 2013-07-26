//----------------------------------------------------
// DT Bootcamp 2013, Parsons the New School for Design. 
// Day 2, Basic Geometry
// beginShape()
// http://processing.org/reference/beginShape_.html
//----------------------------------------------------

// beginShape() and endShape() will take a given set of points
// and connect them in different ways
// For example, TRIANGLES mode will take sets of 3 points and make triangles
// QUADS will take sets of 4 points and make rectangles
// TRIANGLE_FAN will fan out triangles from a common point, etc.

size(800, 600);

// light red background
background(255, 150, 150);

// gray stroke with 50% opacity (127/255 is 50%)
stroke(127, 127);

// fill white with 20% opacity (50/255 is 20%)
fill(255, 50);

// Try each of these to see how the mode changes which shape are drawn
// given the same points
beginShape(TRIANGLES);
//beginShape(TRIANGLE_FAN);
//beginShape(TRIANGLE_STRIP);
//beginShape(LINES);
//beginShape(QUADS);
//beginShape(QUAD_STRIP);

vertex(7,248);
vertex(608,381);
vertex(577,400);
vertex(22,379);
vertex(661,395);
vertex(263,344);
vertex(118,460);
vertex(480,56);
vertex(297,593);
vertex(633,14);
vertex(280,147);
vertex(311,301);
vertex(279,533);
vertex(376,27);
vertex(274,88);
vertex(502,528);
vertex(65,442);
vertex(65,33);
vertex(633,326);
vertex(292,482);
vertex(470,326);
vertex(652,433);
vertex(762,223);
vertex(786,101);

endShape(CLOSE);
