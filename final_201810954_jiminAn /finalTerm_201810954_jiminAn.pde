float time;
PImage day, night;
PImage seat_person1, two_person, walk_woman, up_man1, up_man2,down_man;
PFont f1;
void setup(){
  size(900,620);
}
void draw(){
  
  //fill(230,255,255);
  //rect(0,0,width,height);
  time = map(mouseX, 0, height, 255, 0); 
  tint(255,time);
  day = loadImage("sky2.jpeg");
  image(day,0,-10,900,470);
  tint(160,-time);
  night = loadImage("IMG_2064.PNG");
  image(night,0,-100,900,930); 

  //drawing back-tree
  fill(80, 163, 33);//leaf-1 color
  rect(0,130,400,350);
  ellipse(0,130,100,50);
  ellipse(80,130,100,60);
  ellipse(150,130,100,50);
  
  fill(102,204,102);//leaf-2 color
  rect(0,300,250,200);
  ellipse(0,300,100,50);
  ellipse(80,300,100,60);
  ellipse(150,300,100,50);
  ellipse(220,300,70,40);
  ellipse(250,350,90,100);
  ellipse(250,400,120,100);
  
  //drawing road
  fill(200);
  triangle(0,450,900,600,0,620);
  triangle(0,620,900,620,900,590);
  quad(900,400,900,500,600,550,440,540);
  fill(204,153,153);
  stroke(204,153,153);
  strokeWeight(10);
  strokeJoin(ROUND);
  triangle(0,450,900,400,470,531);
  fill(150);
  strokeWeight(10);
  stroke(150);
  triangle(600,550,900,415,900,600);
  
  //drawing yellow road-line
  stroke(255,255,153);
  strokeWeight(3);
  line(70,500,800,630);
  line(445,567,400,585);
  line(453,620,535,584);
  line(510,650,610,598);
  fill(200);
  arc(150,627.5,600,200,radians(297),radians(360));
  
  //drawing library
  noStroke();
  fill(210);//bright wall
  quad(186.5,140,250,145,310,190,250,190);//back-wall 1
  triangle(179,235,320,245,270,280);//back-wall 2
  fill(102,153,255);//back-window
  triangle(435,140,370,205,400,250);//window 1
  quad(270,280,320,245,314,322,270,310);//window 2
  fill(200);//dark wall
  quad(400.5,140,430,145,370,210,335,200);//back-wall 1
  triangle(270,235,320,245,270,280); //back-wall 2(main)
  triangle(313.5,280,314,322,270,310);
  fill(255,51,51);//column
  quad(200,80,210,83,180,462,170,460);//red-column 1
  quad(330,120,340,123,310,452,300,450);//red-column 2
  //light-on window
  fill(153,204,255);//front-window
  quad(409,145,800,230,800,250,400,250);//window 1
  quad(318,243,800,280,800,320,312,322);//window 2
  quad(312,310,800,320,800,360,308.5,350);//window 3
  quad(304.5,390,800,390,800,420,301.5,422);//window 4
  /**mouse event**/
  //fill(0,100);
  fill(255,255,204,250-time);//light on-off window
  quad(459,145,550,170,545,250,450,250);//4-floor
  quad(368,243,450,245,447,320,365,322);//3-floor
  quad(600,243,800,280,800,320,595,322);
  quad(304.5,390,800,390,800,420,301.5,422);//1-floor
  fill(240);
  quad(190,90,800,200,800,230,186.5,140);//white-wall 1
  quad(183.5,175,800,250,800,280,179,235);//white-wall 2
  quad(174.5,290,800,320,800,340,171,320);//white-wall 3 (main)
  quad(313.5,280,800,305,800,320,310,310);//white-wall 3 (sub)
  quad(308.5,350,800,360,800,390,304.5,390);//white-wall 4 (sub)
  quad(301.5,422,800,410,800,425,299.5,457);//white-wall 5 (sub)
  //light blur
  //fill(0,100);
  fill(255,255,153,-time-10);
  quad(452,175,555,188,553,223,451,212);//4-floor
  quad(363,243,455,248,452,292,360,290);//3-floor
  quad(595,258,800,273,800,310,590,302);
  quad(304.5,385,800,383,800,415,301.5,425);//1-floor
  //strokeWeight(1);
  //stroke(200);
  //line(800,200,800,400);//end of wall guide-line
  //line(190,80,160,460);//start of wall guide-line
  //line(330,120,300,450);//mid of wall guide-line
  //noStroke();
  
  //input slope text, LIBRARY title
  char title[] = {'L','I','B','R','A','R','Y'};
  int row[] = {300,325,337,360,384,407,429};
  f1 = loadFont("ArialNarrow-BoldItalic-100.vlw");
  textFont(f1);
  fill(51,153,51);
  int col = 230;
  textSize(40);
  for(int i = 0; i < 7; i++){
    text(title[i], row[i], col);
    col += 2;
  }
  
  //drawing front-tree
  fill(102,235,102);//leaf-1 : right
  quad(350,420,700,420,700,432,349,450);
  ellipse(600,420,70,30);
  ellipse(650,420,60,20);
  ellipse(680,420,40,10);
  ellipse(700,426,10,12);
  quad(350,360,500,360,500,432,349,450);
  ellipse(400,360,100,50);
  ellipse(460,360,80,40);
  ellipse(500,400,80,90);
  fill(102,220,102);//leaf-1 : left
  quad(250,350,400,350,400,438,249,460);
  ellipse(250,415,70,90);
  ellipse(300,355,100,80);
  ellipse(350,350,100,60);
  ellipse(400,405,50,66);
  fill(102,204,102); // leaf-2
  quad(250,420,600,420,600,438,249,460);
  ellipse(250,440,30,40);
  ellipse(300,420,100,40);
  ellipse(350,420,100,50);
  ellipse(420,420,100,50);
  ellipse(490,420,90,40);
  ellipse(550,420,90,40);
  ellipse(595,425,25,26);


  //drawing bench
  stroke(220); //column
  strokeWeight(5);
  line(300,455,302,400);
  line(382,458,384,393);
  strokeWeight(4);
  line(350,452,352,396);
  noStroke();
  fill(220); //out-screen
  quad(302,400,352,400,352,430,302,430);
  fill(255); //in-screen
  quad(305,402,349,402,349,428,305,428);
  fill(220); // out-loof
  quad(325,390,392,390,352,400,299,400);
  fill(200); //in-loof
  quad(325,393,390,393,349,402,305,402);
  stroke(153,102,51);//bench leg
  strokeWeight(3);
  line(321,445,321,460);
  line(343,455,343,468);
  line(384,455,384,466);
  line(363,445,363,460);
  fill(153,102,51); //bench
  quad(315,422,359,422,364,445,320,445);
  quad(320,445,364,445,385,455,340,455);
  noStroke();

  //drawing colorcon
  fill(255,107,100);
  stroke(255,107,100);
  strokeWeight(5);
  strokeJoin(ROUND);
  triangle(600,492,650,476,630,430);
  triangle(680,467,720,455,705,422);
  triangle(745,447,775,438,762,418);
  triangle(795,434,815,428,808,411);  
  noStroke();

  //drawing slope standing light
  fill(153,255,255);
  quad(700,150,710,160,680,551.5,670,550);
  triangle(705,180,630,160,705,155);//light 1
  ellipse(630,170,50,20);
  fill(280.5-(time/2),331.5-(time/2),230);//light on-off 
  //fill(255,255,204);
  ellipse(630,173,45,18);
  //fill(0,100);
  fill(255,255,153,-time-10);//circle light1
  ellipse(630,180,70,30); // in-circle
  ellipse(630,190,90,50); //out-circle
  //quad(607.5,173,655.5,173,600,550,440,540);
  fill(153,255,255);
  triangle(700,152,710.5,162,705,120);//light 2
  ellipse(705,125,20,40);
  fill(280.5-(time/2),331.5-(time/2),230);//light on-off 
  //fill(255,255,204);
  ellipse(705,128,18,35);
  fill(255,255,153,-time-20);//circle light 2
  ellipse(705,130,40,60); // in-circle
  ellipse(705,135,60,80); //out-circle
  
  //drawing day-people
  tint(255,time);
  two_person = loadImage("two_p.png");
  image(two_person,230,450,95,105);
  walk_woman = loadImage("walk_woman1.png");
  image(walk_woman,110,390,60,65);
  up_man1 = loadImage("up_man1.png");
  image(up_man1,600,500,85,130);
  up_man2 = loadImage("up_man2.png");
  image(up_man2,100,500,115,135);
  
  //drawing night-people
  tint(250,150-time);
  seat_person1 = loadImage("seat_person1.png");
  image(seat_person1,330,415,60,60);
  //down_man = loadImage("down_man.png");
  //image(down_man,600,505,90,120);

}
