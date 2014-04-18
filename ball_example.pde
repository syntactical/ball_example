void setup(){
  size(displayWidth,displayHeight);
  colorMode(HSB);
  setUpCircles();
  sayHiToBill();
  noCursor();
  smooth();
  makeStars();
  makeAutomata();
}

void draw(){
  background(0);
  drawCircles();
  drawBill();
  drawLines();
  drawArcs();
  drawLissajous();
  fallingStars();
  crystallize();
}

boolean sketchFullScreen() {
  return true;
}
