Circle[] circles;
Circle circle1;
//Circle circle2;

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
  
  epilepsyTest();
  
//  badSizeIdea();

  dependentFrameRate();

//  size(600, mouseY + 10 + int(random(50)));
  for(int x = 0; x < circles.length; x++){
    circles[x].update();
    circles[x].render();
  }
}

void epilepsyTest(){
  background(random(255), 255, 255);
  fill(random(255), 255, 255);
}

void badSizeIdea(){
  size(random(600), random(600));
}

void dependentFrameRate(){
  float positional = mouseX;
  
  if(random(1) > .5){
    positional = mouseY;
  }
  
  frameRate(max(4,int(positional + 1) / 20 + 1));
}

class Circle{
  float x, y, w, h;
  
  float oscillation1, oscillation2;
  
  Circle(float _x, float _y, float _w, float _h){
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    
    oscillation1 = 0;
    oscillation2 = 0;
  }
  
  void update(){
    
    oscillation1 += PI/50;
    oscillation2 += PI/100;
    
    followMouse();
    
//    followMouseMirrored();
    
    sizeDependsOnMouse();
    
    wobble();
    
    distend();
  }
  
  void distend(){
    h += 100 * sin(oscillation1);
    w += 100 * cos(oscillation2);
  }
  
  void followMouse(){
    y = mouseY;
    x = mouseX;
  }
  
  void followMouseMirrored(){
    x = mouseY;
    y = mouseX;
  }
  
  void sizeDependsOnMouse(){
    w = mouseX;
    h = mouseY;
  }
  
  void sizeDependsOnMouseMirrored(){
    w = mouseY;
    h = mouseX;
  }
  
  void wobble(){
    y += 200 * sin(oscillation1);
    x += 50 * cos(oscillation2);
  }
  
  void render(){
    ellipse(x, y, w, h);
  }
}
