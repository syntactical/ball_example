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
  setBackground();
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
