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
  bill.show();
  drawLines();
  drawArcs();
}

boolean sketchFullScreen() {
  return true;
}
