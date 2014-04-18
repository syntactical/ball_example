void setup(){
  size(displayWidth,displayHeight);
  colorMode(HSB);
  setUpCircles();
  sayHiToBill();
  noCursor();
  smooth();
  makeStars();
}

void draw(){
  background(0);
  drawCircles();
  drawBill();
  drawLines();
  drawArcs();
  drawLissajous();
  fallingStars();
}

boolean sketchFullScreen() {
  return true;
}
