void setup(){
  size(displayWidth,displayHeight);
  colorMode(HSB);
  setUpCircles();
  sayHiToBill();
  noCursor();
  smooth();
}

void draw(){
  background(0);
  drawCircles();
  drawBill();
  drawLines();
  drawArcs();
  drawLissajous();
}

boolean sketchFullScreen() {
  return true;
}
