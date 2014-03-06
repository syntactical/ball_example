Circle[] circles;
Circle circle1;
Circle circle2;

void setup(){
  size(600,600);
  circle1 = new Circle(width/2, height/2, 50, 50);
  circle2 = new Circle(width/2, height/2, 50, 50);
  circles = new Circle[2];
  circles[0] = circle1;
  circles[1] = circle2;
}

void draw(){
  background(255);
  
  circle2.x = circle1.x;
  circle2.y = circle1.y;
  
  circle1.y = mouseX;
  circle1.x = mouseY;
  
  
  for(int x = 0; x < circles.length; x++){
    circles[x].render();
  }
}

class Circle{
  float x, y, w, h;
  
  Circle(float _x, float _y, float _w, float _h){
    x = _x;
    y = _y;
    w = _w;
    h = _h;
  }
  
  void render(){
    ellipse(x, y, w, h);
  }
}
