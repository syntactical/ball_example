void drawLines(){
  if (quickLines) {
    for(int x = 0; x < 20; x ++){
      line((10*x + frameCount*30)%width, 0, (10*x + frameCount*30)%width, height); 
    }  
  }
  if (drawLines) {
    for(int x = 0; x < 20; x ++){
      line((10*x + frameCount*3)%width, 0, (10*x + frameCount*3)%width, height); 
    }
  }
  if (whiteLines) {
    for(int x = 0; x < 20; x ++){
      stroke(255);
      strokeWeight(5);
      line((10*x + frameCount * 3)%width, 0, (10*x + frameCount*5)%width, height);
    }
  } 
  if (horizontalWhiteLines) {
     for(int x = 0; x < 20; x ++){
      stroke(255);
      strokeWeight(5);
      line(0, (10*x + frameCount * 3)%height, width, (10*x + frameCount*5)%height);
    }
  }
}
