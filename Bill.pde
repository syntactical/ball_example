
class Bill{
  float x, y;
  float x_vel, y_vel;
  PImage img;
  
  Bill(PImage _img, float _x, float _y){
    x = _x;
    y = _y;
    img = _img;
    x_vel = 5.4;
    y_vel = 5;
  }
  
  void show(){
    update();
    render(); 
  }
  
  void update(){
    if((x <= 0) || (x + img.width >= width)) {
      x_vel *= -1;
    }
    
    if((y <= 0) || (y + img.height >= height)) {
      y_vel *= -1;
    }
    
    x += x_vel;
    y += y_vel;
  }
  
  void render(){
    image(img, x, y);
  }
}
