class Pillar{
  float posx;
  float posy;
  Pillar(float x){
    posx = x;
  }

  void display(){
    fill(206,222,251);  
    rectMode(CORNERS);
    rect(width/2-posx, 455,width/2-posx-15, 460);
    
    fill(227,245,255);
    beginShape();
    vertex(width/2-posx, 460);
    vertex(width/2-posx-15, 460);
    vertex(width/2-posx-10, 465);
    vertex(width/2-posx-10, 490);
    vertex(width/2-posx-5, 490);
    vertex(width/2-posx-5, 465);
    endShape(CLOSE);
  }
}
