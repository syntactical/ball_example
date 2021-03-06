Circle circle;


void setUpCircles(){
  circle = new Circle(width/2, height/2, 50, 50);
}

void drawCircles(){
  if (drawCircles){
    circle.update();
    circle.render();
  }
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

    if (followMouse) {
      followMouse();
    }
    if (followMouseMirrored) {
      followMouseMirrored();
    }
   
    if (badSizeIdea) {
      badSizeIdea();
    }
    if (anotherBadSizeIdea) {
      anotherBadSizeIdea();
    }
    if (mouseDependentFrameRate) {
      mouseDependentFrameRate();
    }
    if (sizeDependsOnMouse) {
      sizeDependsOnMouse();
    }
    if (wobble) {
      wobble();
    }
    if (distend) {
      distend();
    }
  }
  
  void distend(){
    h += 10 * sin(oscillation1);
    w += 10 * cos(oscillation2);
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
    
  void badSizeIdea(){
    size(int(random(600)), int(random(600)));
  }
  
  void anotherBadSizeIdea(){
    size(600, mouseY + 10 + int(random(50)));
  }
  
  void mouseDependentFrameRate(){
    float positional = mouseX;
  
    if(random(1) > .5){
      positional = mouseY;
    }
  
    frameRate(max(4,int(positional + 1) / 20 + 1));
  }
  
 
  
  void wobble(){
    y += 20 * sin(oscillation1);
    x += 50 * cos(oscillation2);
  }
  
  void render(){
    ellipse(x, y, w, h);
  }
}
