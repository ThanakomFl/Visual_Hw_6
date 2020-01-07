class Train{
  float posx;
  float posy;
  Train(float x){
    posx = x;
  }

  void display(){
    fill(255,255,255);
    rectMode(CENTER);
    rect(posx,438,300,20,40);
    fill(255,125,125);
    rect(posx,444,250,10,40);
    fill(77,148,170);
    rect(posx,438,15,10,2);
    rect(posx+20,438,15,10,2);
    rect(posx+40,438,15,10,2);
    rect(posx+60,438,15,10,2);
    rect(posx+80,438,8,12,2);
    rect(posx+100,438,15,10,2);
    rect(posx+120,438,15,10,2);
    rect(posx-20,438,8,12,2);
    rect(posx-40,438,15,10,2);
    rect(posx-60,438,15,10,2);
    rect(posx-80,438,15,10,2);
    rect(posx-100,438,8,12,2);
    rect(posx-120,438,15,10,2);
    rect(posx-120,438,15,10,2);
    rectMode(CORNER);
    rect(posx-150, 432, 15, 10, 40, 0,0,0);
    rect(posx+135, 432, 15, 10, 0, 40,0,0);
    fill(#738199);
    rectMode(CENTER);
    rect(posx,446,298,5,40);
  }
  
  void update(){
    posx = posx + 1;
    if(posx > width + 150){
      posx = -160;
    }
  }
}
