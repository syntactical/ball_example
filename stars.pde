int numStars = 30;
float[] stars = new float[30];

void makeStars(){
 for(int i = 0; i < numStars; i ++){
   stars[i] = random(0, 1);
 } 
}
void fallingStars(){
 if (fallingStars){
   noStroke();
   fill(255);
   rectMode(CENTER);
   for(int i = 0; i < numStars; i ++){
     rect(round(i*width/numStars), (round(stars[i]*height + frameCount))%height, 5, 5);
   }
      
 } 
}
