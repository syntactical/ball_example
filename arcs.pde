void drawArcs(){
  if (drawArcs){
    colorMode(HSB);
    strokeWeight(20);
    noFill();
    translate(width/2, height/2);
    for(int i = 0; i < 3; i ++){
      rotate(radians(120));
      for(int k = 0; k < 5; k ++){
        stroke(150, 200, 200);
        arc(0, 0, 100*k+100, 200*k+200, radians(frameCount), radians(frameCount + 60));
        stroke(150, 70, 250);
        arc(0, 0, 100*k+100, 200*k+200, radians(-frameCount + 180), radians(-frameCount + 45 + 180));
        stroke(0, 200, 200);
        arc(0, 0, 100*(k+.5)+100, 200*(k+.5)+200, radians(frameCount), radians(frameCount + 60));
        stroke(0, 70, 250);
        arc(0, 0, 100*(k+.5)+100, 200*(k+.5)+200, radians(-frameCount + 180), radians(-frameCount + 45 + 180));
      }
    }
  }
}
