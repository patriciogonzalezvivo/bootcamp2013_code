//----------------------------------------------------
// DT Bootcamp 2013, Parsons the New School for Design. 
// Day 2, Basic Geometry
// colorMode()
// http://processing.org/reference/colorMode_.html
//----------------------------------------------------

size(800, 600);

// colorMode() lets you choose between RGB and HSB (Hue-Saturation-Brightness)
// and choose new ranges

// Here we set the range for hue to 360, as in 360º of the color wheel
// The rest of the values are 0-100 instead of 0-255
// This makes it easy to think of your values as percentages
// The last value is alpha (transparency)
colorMode(HSB, 360, 100, 100, 100);


// HSB is useful because you can move through all the "colors" (i.e. hues)
// by changing only the first value instead of having to change three
// values (red, green, and blue)

// Try changing the first value to numbers between 0-360
background(360, 80, 80);

// If you noticed that 0 and 360 are both red, great! The start and end
// values are the same because of the "color wheel"
// http://en.wikipedia.org/wiki/Color_wheel
