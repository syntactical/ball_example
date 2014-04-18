void drawLissajous(){
  if(lissajous){
    pushMatrix();
    translate(width/4, height/4);
    
    float angle_lead = radians(frameCount + 120);
    float angle_tail = radians(frameCount);
    
    float pointX_lead = (5 * 700 * cos(1.5*angle_lead+PI/2))/10 + width/2;
    float pointY_lead = (3 * 700 * sin(2*angle_lead))/10 + height/2;
    
    float pointX_tail = (5 * 700 * cos(3*angle_tail+PI/2))/10 + width/2;
    float pointY_tail = (4 * 700 * sin(2.5*angle_tail))/10 + height/2;
    
    noFill();
    strokeWeight(120);
    stroke(255);

    
    bezier(pointX_lead, pointY_lead, 
            height/2, width/2,
            width/4, height/3, 
            pointX_tail, pointY_tail);
            
    bezier(width-pointX_lead, height-pointY_lead, 
            height/2, width/2,
            width/4, height/3, 
            width-pointX_tail, height-pointY_tail);

    
    strokeWeight(1);
    popMatrix();
  }
    
}

