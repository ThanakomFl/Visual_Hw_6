float r;
float r1;
float r2;
float r3;
Pillar [] pillars ;
Tree [] trees ;
Train [] trains;
Cloud [] clouds;
PImage sm;
  
PImage img;
void setup(){
  size(1000,600,P3D);
  pillars = new Pillar[230];
  trees = new Tree[10];
  trains = new Train[1];
  trains[0] = new Train(width/2);
  img = loadImage("bg-2.jpg");
  surface.setSize(img.width,img.height);
  clouds = new Cloud[15];
  for (int i = 0 ; i< clouds.length;i++){
    clouds[i] = new Cloud();
  }  
  sm = loadImage("5.png");
}

void draw(){

  image(img,0,0);
  //background(#8FAF48);
    //background(#A5D15A);
  noStroke();
  
  for (int i = 0 ; i< clouds.length;i++){
    clouds[i].display();
    clouds[i].update();
  }  
   fill(178,134,128);
   rectMode(CORNERS);
   rect(width/2+410,430,width/2+415,490);
  ellipseMode(CENTER);
  fill(173,221,142);
  ellipse(width/2+385, 415, 45, 45);
  fill(150,204,109);
  ellipse(width/2+440, 430, 40, 40);
   ellipse(width/2+415, 435, 45, 45);
  ellipse(width/2+420, 410, 35, 35);
  
  
   fill(178,134,128);
   rectMode(CORNERS);
   rect(width/2+65,450,width/2+70,490);
  ellipseMode(CENTER);
  fill(173,221,142);
  ellipse(width/2+45, 435, 45, 45);
  ellipse(width/2+65, 435, 25, 25);
   fill(178,134,128);
   rect(width/2+75,430,width/2+78,490);
   fill(150,204,109);
  ellipse(width/2+80, 450, 40, 40);
   ellipse(width/2+75, 455, 45, 45);
  ellipse(width/2+90, 430, 35, 35);
  
   fill(178,134,128);
   rectMode(CORNERS);
   rect(width/2-410,430,width/2-415,490);
    rect(width/2-400,430,width/2-403,490);
  ellipseMode(CENTER);
  fill(173,221,142);
  ellipse(width/2-385, 425, 45, 45);
  fill(150,204,109);
  ellipse(width/2-425, 440, 40, 40);
   ellipse(width/2-410, 445, 35, 35);
  ellipse(width/2-415, 420, 25, 25);
  
  
   // kunghun 1 
  fill(202,235,255);
  beginShape();
  vertex(width/2-437,380);
  vertex(width/2-433,380);
  vertex(width/2-430, 490);
  vertex(width/2-440, 490);
  endShape(CLOSE);
  
  pushMatrix();
  translate(width/2-435,380);
  ellipseMode(CENTER);
  ellipse(0,0,15,15);
  rotateZ(r);
  triangle(0,0,0,70,10,15);
  pushMatrix();
  rotate(PI*2/3);
  triangle(0,0,0,70,10,15);
  popMatrix();
  pushMatrix();
  rotate(PI*4/3);
  triangle(0,0,0,70,10,15);
  popMatrix();
  r = r + 0.02;
  popMatrix();

  
  //kunghun 3
  fill(202,235,255);
  beginShape();
  vertex(width/2+357,290);
  vertex(width/2+353,290);
  vertex(width/2+350, 490);
  vertex(width/2+360, 490);
  endShape(CLOSE);
  
  pushMatrix();
  translate(width/2+355,290);
  ellipseMode(CENTER);
  ellipse(0,0,15,15);
  rotateZ(r1);
  triangle(0,0,0,70,10,15);
  pushMatrix();
  rotate(PI*2/3);
  triangle(0,0,0,70,10,15);
  popMatrix();
  pushMatrix();
  rotate(PI*4/3);
  triangle(0,0,0,70,10,15);
  popMatrix();
  r1 = r1 + 0.03;
  popMatrix();
  
 //short grass
  fill(159,191,58);
  ellipseMode(CENTER);
  ellipse(width/2-445, 490, 10, 15);
  ellipse(width/2-440, 490, 15, 15);
  ellipse(width/2-430, 480, 25, 25);
  ellipse(width/2-410, 485, 20, 20);
  ellipse(width/2-405, 490, 10, 10);
  ellipse(width/2-400, 490, 10, 15);
  
  
  fill(159,191,58);
  ellipseMode(CENTER);
  ellipse(width/2+440, 490, 10, 15);
  ellipse(width/2+445, 490, 15, 15);
  ellipse(width/2+410, 480, 25, 25);
  ellipse(width/2+430, 485, 20, 20);
  ellipse(width/2+405, 490, 10, 10);
  ellipse(width/2+400, 490, 10, 15);
  
  

  
  //short grass
  fill(159,191,58);
  ellipseMode(CENTER);
  ellipse(width/2-180, 490, 10, 15);
  ellipse(width/2-185, 490, 15, 15);
  ellipse(width/2-150, 480, 25, 25);
  ellipse(width/2-170, 485, 20, 20);
  ellipse(width/2-135, 490, 10, 10);
  ellipse(width/2-140, 490, 10, 15);
  ellipse(width/2-190, 490, 10, 15);
  ellipse(width/2-200, 480, 20, 15);
  ellipse(width/2-210, 490, 20, 15);
  
  
  // second buliding
  
  rectMode(CORNERS);
  fill(237,209,181);
  rect(width/2-390,300,width/2-320,490);
  
  rectMode(CORNERS);
  fill(255,235,207);
  rect(width/2-320,300,width/2-300,490);
  
  rectMode(CORNERS);
  fill(237,209,181);
  rect(width/2-300,300,width/2-280,490);
  
  rectMode(CORNERS);
  fill(255,235,207);
  rect(width/2-280,300,width/2-210,490);
  
  
  rectMode(CORNER);
  for(int i=0 ; i < 9 ; i++){
    fill(#84bec1);
    rect(width/2-380,310+(i*20),52,10);
        fill(#82b9bc);
    rect(width/2-315,310+(i*20),10,10);
        fill(#84bec1);
    rect(width/2-295,310+(i*20),10,10);
        fill(#82b9bc);
    rect(width/2-270,310+(i*20),52,10);
  }
  
    
  
  // kung hun 2
  fill(202,235,255);
  beginShape();
  vertex(width/2-177,350);
  vertex(width/2-173,350);
  vertex(width/2-170, 490);
  vertex(width/2-180, 490);
  endShape(CLOSE);
  
  pushMatrix();
  translate(width/2-175,350);
  ellipseMode(CENTER);
  ellipse(0,0,15,15);
  rotateZ(r);
  triangle(0,0,0,70,10,15);
  pushMatrix();
  rotate(PI*2/3);
  triangle(0,0,0,70,10,15);
  popMatrix();
  pushMatrix();
  rotate(PI*4/3);
  triangle(0,0,0,70,10,15);
  popMatrix();
  r = r + 0.01;
  popMatrix();
  
    // first bulding
  rectMode(CORNERS);
  fill(252,221,208);
  rect(width/2-100,250,width/2+20,490);
  
  rectMode(CORNERS);
  fill(226,107,84);
  rect(width/2-102,250,width/2+20,245);
  
  fill(255,244,230); // orange bl
  beginShape();
  vertex(width/2+20, 250);
  vertex(width/2+20, 490);
  vertex(width/2+50, 490);
  vertex(width/2+50, 250);
  endShape(CLOSE);
   
  fill(255,145,115);  // orange wh
  beginShape();
  vertex(width/2+20, 250);
  vertex(width/2+20, 245);
  vertex(width/2+52, 245);
  vertex(width/2+52, 250);
  endShape(CLOSE);
  
  fill(255,244,230);
  beginShape();
  vertex(width/2-25, 350);
  vertex(width/2-75,375);
  vertex(width/2-75,490);
  vertex(width/2-25,490);
  endShape(CLOSE);
  
  rectMode(CORNERS);
  fill(252,221,208);
  rect(width/2-75,375,width/2-150,490);
  
  fill(210,89,74);
  beginShape();
  vertex(width/2-73,375);
  vertex(width/2-152,375);
  vertex(width/2-152,370);
  vertex(width/2-73,370);
  endShape(CLOSE);
  
  fill(226,107,84);
  beginShape();
  vertex(width/2-102,346);
  vertex(width/2-152,370);
  vertex(width/2-73,370);
  vertex(width/2-25,346);
  endShape(CLOSE);

  fill(255,147,116);
  beginShape();
  vertex(width/2-73,375);
  vertex(width/2-73,370);
  vertex(width/2-25,346);
  vertex(width/2-25,350);
  endShape(CLOSE);

  
  for (int i = 0 ; i< 4;i++){
    rectMode(CORNER);
    fill(#4e9fa8);
    rect(width/2-135,390+(i*25),15,12);
    fill(#ffcfab);
    rect(width/2-140,402+(i*25),15,5);
    fill(#ffe3c2);
    rect(width/2-130,402+(i*25),5,5);
    
    rectMode(CORNER);
    fill(#4e9fa8);
    rect(width/2-105,390+(i*25),15,12);
    rect(width/2-65,390+(i*25),30,12);
    fill(#ffcfab);
    rect(width/2-110,402+(i*25),15,5);
    fill(#ffe3c2);
    rect(width/2-100,402+(i*25),5,5);
      
  }
  rectMode(CORNER);
  fill(#4e9fa8);
  rect(width/2-50,370,15,12);
  
  rectMode(CORNER);
  for (int i = 0 ; i< 9;i++){
      fill(#4e9fa8);
      rect(width/2+28,265+(i*25),18,10);
        fill(#ffcda8);
      rect(width/2+22,275+(i*25),7,7);
        fill(#ffe3c2);
      rect(width/2+29,275+(i*25),28,7);
      fill(#4e9fa8);
    if(i<3){
      rect(width/2-85,265+(i*25),15,12);
      rect(width/2-60,265+(i*25),15,12);
      rect(width/2-35,265+(i*25),15,12);
      rect(width/2-10,265+(i*25),15,12);
    }else{
          rect(width/2-10,265+(i*25),15,12);
    }
  }
  
  trains[0].display();
  trains[0].update();
  
  // train
  fill(#e3f5ff);
  rectMode(CENTER);
  rect(width/2,450,width+50,10,10);
  
  //pillar
  
  for (int i = 0 ; i< 11;i++){
    pillars[i] = new Pillar(415-(i*85));
    pillars[i].display();
  }  
  
  // third buliding 
  
  fill(206,206,206); // gray 1
  beginShape();
  vertex(width/2+100, 312);
  vertex(width/2+140, 295);
  vertex(width/2+140, 490);
  vertex(width/2+100, 490);
  endShape(CLOSE);
  
  rectMode(CORNERS);
  fill(224,224,224); // gray 2
  rect(width/2+140,290,width/2+165,490);
  
  rectMode(CORNERS);
  fill(245,245,245); // gray 3
  beginShape();
  vertex(width/2+165, 290);
  vertex(width/2+175, 289);
  vertex(width/2+175, 489);
  vertex(width/2+165, 490);
  endShape(CLOSE);
  
  fill(224,224,224); // gray 2
  beginShape();
  vertex(width/2+175, 289);
  vertex(width/2+220, 312);
  vertex(width/2+220, 489);
  vertex(width/2+175, 489);
  endShape(CLOSE);
  
  fill(245,245,245); // gray 3
  beginShape();
  vertex(width/2+285, 312);
  vertex(width/2+220, 312);
  vertex(width/2+220, 489);
  vertex(width/2+285, 489);
  endShape(CLOSE);
  
  fill(252,252,252); // gray 2
  beginShape();
  vertex(width/2+175, 289);
  vertex(width/2+220, 312);
  vertex(width/2+285, 312);
  vertex(width/2+240, 289);
  vertex(width/2+230, 289);
  vertex(width/2+262, 306);
  vertex(width/2+218, 306);
  vertex(width/2+185, 289);
  endShape(CLOSE);
  
  fill(206,206,206); // gray 2
  beginShape();
  vertex(width/2+220, 289);
  vertex(width/2+230, 289);
  vertex(width/2+262, 306);
  vertex(width/2+218, 306);
  vertex(width/2+203, 298);
  endShape(CLOSE);
  
  // building 4
  fill(249,212,199); // 
  beginShape();
  vertex(width/2+305, 365);
  vertex(width/2+325, 350);
  vertex(width/2+345, 365);
  vertex(width/2+345, 490);
  vertex(width/2+305, 490);
  endShape(CLOSE);
  
  fill(255,235,220);
  rectMode(CORNERS);
  rect(width/2+345, 365,width/2+400,490);
  
  fill(255,252,249); // 
  beginShape();
  vertex(width/2+325, 350);
  vertex(width/2+345, 365);
  vertex(width/2+400, 365);
  vertex(width/2+380, 350);
  endShape(CLOSE);
  
  
  rectMode(CORNER);
  for (int i = 0 ; i< 7;i++){
      fill(#4e9fa8);
      rect(width/2+121,320+(i*25),18,10);
      fill(#bababa);
      rect(width/2+110,330+(i*25),18,3);
      fill(#d3d3d3);
      rect(width/2+128,330+(i*25),10,3);
      
      fill(#4e9fa8);
      rect(width/2+191,320+(i*25),18,10);
      fill(#bababa);
      rect(width/2+180,330+(i*25),18,3);
      fill(#f4f2f2);
      rect(width/2+198,330+(i*25),10,3);
  }

  for (int i = 0 ; i< 8;i++){
      fill(#4fa0a9);
      rect(width/2+148,300+(i*23),10,12);
  }
  
  for (int i = 0 ; i< 7;i++){
      fill(#4fa0a9);
      rect(width/2+232,320+(i*25),10,12);
      rect(width/2+247,320+(i*25),10,12);
      rect(width/2+262,320+(i*25),10,12);
  }
  
  // ground
  rectMode(CORNERS);
  fill(120,190,69);
  rect(width/2-450,510,width/2+450,500);
  fill(166,209,90);
  rect(width/2-450,487,width/2+450,500);
  
  // tree
  for (int i = 0 ; i< 3;i++){
    trees[i] = new Tree(240-(i*250));
    trees[i].display();
  }  
  
  rectMode(CORNER);
  for (int i = 0 ; i< 5;i++){
      fill(#4e9fa8);
      rect(width/2+356,380+(i*22),34,10);
  }

    pushMatrix();
  translate(width/2,height+25);
  rotateY(r3);
  image(sm,-200,-100);
  r3 = r3 + 0.01;
  popMatrix();
  
}
