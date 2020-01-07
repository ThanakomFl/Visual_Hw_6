class Tree{
  float posx;
  float posy;
  Tree(float x){
    posx = x;
  }

  void display(){
  // tree 1 
  fill(174,131,121);
   rectMode(CORNERS);
   rect(width/2-(posx-17),480,width/2-(posx-23),500);
   
  fill(139,193,77); // 
  beginShape();
  vertex(width/2-(posx-20), 450);
  vertex(width/2-posx, 480);
  vertex(width/2-(posx-40), 480);
  endShape(CLOSE);
  
  
  fill(129,173,87); // 
  beginShape();
  vertex(width/2-(posx-20), 450);
  vertex(width/2-(posx-8), 468);
  vertex(width/2-(posx-36), 472);
  endShape(CLOSE);
  
  fill(139,193,77); // 
  beginShape();
  vertex(width/2-(posx-20), 440);
  vertex(width/2-(posx-5), 465);
  vertex(width/2-(posx-35), 465);
  endShape(CLOSE);
  
  
  fill(129,173,87); // 
  beginShape();
  vertex(width/2-(posx-20), 440);
  vertex(width/2-(posx-12), 452);
  vertex(width/2-(posx-30), 456);
  endShape(CLOSE);
  
  fill(139,193,77); // 
  beginShape();
  vertex(width/2-(posx-20), 430);
  vertex(width/2-(posx-10), 450);
  vertex(width/2-(posx-30), 450);
  endShape(CLOSE);
  }
}
