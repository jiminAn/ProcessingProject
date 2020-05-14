size(1500,800);//1500,800
background(30);

PFont f1,f2;
  
f1 = loadFont("TimesNewRomanPSMT-200.vlw");
f2 = loadFont("BerlinSansFB-Reg-200.vlw");
String outside_talk[] = {"get into a major company", "high-paying job!","Public servant"};
String inside_talk[] = {"Can I do well?","What's job fits me?","What's my favorite?"};

//pushMatrix();
//int cnt = 0;
//  translate(width/2, height/2);
//for(int i = 0; i < 310; i += 7){
//  textFont(f1);
//  fill(100,1*i);
//  textSize(i*0.3);
//  rotate(radians(20));
//  text(outside_talk[cnt++],i,i);
//  if(cnt == outside_talk.length)
//    cnt = 0;
//}
//popMatrix();
  


int center_y = 400;
for(int x1 = 0; x1 < width; x1 += 3){
  strokeWeight(3);
  stroke(random(230),random(230),random(230),100);
  if(x1 <= width/6)
    line(x1,center_y-random(50),x1,center_y+random(50));
  else if(x1 <= width/6*2)
    line(x1,center_y-random(25,100),x1,center_y+random(25,100));
  else if(x1 <= width/6*3)
    line(x1,center_y-random(50,150),x1,center_y+random(50,150));
  else if(x1 <= width/6*4)
    line(x1,center_y-random(50,150),x1,center_y+random(50,150));
  else if(x1 <= width/6*5)
    line(x1,center_y-random(25,100),x1,center_y+random(25,100));
  else 
    line(x1,center_y-random(50),x1,center_y+random(50));
}
fill(255);
noStroke();
ellipse(width/2, height/2,600,600);

PImage left_hand= loadImage("left_hand.png");
PImage right_hand= loadImage("right_hand.png");
image(left_hand,450,500,300,300);
image(right_hand,750,500,300,300);
