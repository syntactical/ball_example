void setup(){
  size(600,600);
  colorMode(HSB);
  circle1 = new Circle(width/2, height/2, 50, 50);
  circles = new Circle[1];
  circles[0] = circle1;
}

void draw(){
  background(0);
  size(600,600);
  for(int x = 0; x < circles.length; x++){
    circles[x].update();
    circles[x].render();
  }
}

