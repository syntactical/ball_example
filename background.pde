void setBackground(){
  if (!interdimensional){
    background(0); 
  }
  
  if (popMusic) {
    colorMode(HSB);
    background(random(255), 255, 255);
  }
}
