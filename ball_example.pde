Circle[] circles;
Circle circle1;

PImage billImg;
Bill bill;

void setup(){
  size(displayWidth,displayHeight);
  colorMode(HSB);
  circle1 = new Circle(width/2, height/2, 50, 50);
  circles = new Circle[1];
  circles[0] = circle1;
  
  billImg = loadImage("bill.jpg");
  bill = new Bill(billImg, 
  random(width - billImg.width - 1), 
  random(height - billImg.height - 1));
  noCursor();
  smooth();
  makeCircles();
}

void draw(){
  background(0);
  size(600,600);
  for(int x = 0; x < circles.length; x++){
    circles[x].update();
    circles[x].render();
  }
  
  bill.show();
  updateCircles();
  drawLines();
  drawArcs();
}

boolean sketchFullScreen() {
  return true;
}
