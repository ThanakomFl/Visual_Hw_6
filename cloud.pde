class Cloud{
  float posx;
  float posy;
  float pic ;
  PImage cl1,cl2,cl3,cl4;
  
  float speed ;
  Cloud(){
    posx = random(width);
    
    posy = random(height/2);
    
    pic = int(random(4));
    
    cl1 = loadImage("1.png");
    
    cl2 = loadImage("2.png");
    
    cl3 = loadImage("3.png");
    
    cl4 = loadImage("4.png");
    speed = random(0.1,0.3);
  }

  void display(){
    if(pic == 0){
        image(cl1,posx,posy);
    }
    if(pic == 1){
        image(cl2,posx,posy);
    }
    if(pic == 2){
        image(cl3,posx,posy);
    }
    if(pic == 3){
        image(cl4,posx,posy);
    }

  }
  void update(){
    posx = posx + speed;
    if(posx > width){
      posx = 0;
    }
  }
}
