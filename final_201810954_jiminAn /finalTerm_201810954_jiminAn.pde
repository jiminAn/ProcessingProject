float time;
PImage sky;
void setup(){
  size(900,620);
  

}
void draw(){
  
  fill(230,255,255);
  rect(0,0,width,height);
  //sky = loadImage("sky.png");
  //image(sky,0,0,width,height);

  //time = map(mouseX, 0, height, 255, 0);
  //tint(time+100);

  
  
  //drawing road
  noStroke();
  fill(200);
  triangle(0,450,900,600,0,620);
  triangle(0,620,900,620,900,590);
  triangle(600,550,900,400,440,540);
  fill(153,102,102);
  triangle(0,450,900,400,470,531);
  fill(150);
  triangle(600,550,900,400,900,600);
  

  
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
  fill(102,153,255);//dark window
  triangle(435,140,370,205,400,250);//window 1
  quad(270,280,320,245,314,322,270,310);//window 2
  fill(200);//dark wall
  quad(400.5,140,430,145,370,210,335,200);//back-wall 1
  triangle(270,235,320,245,270,280); //back-wall 2(main)
  triangle(313.5,280,314,322,270,310);
  fill(255,51,51);
  quad(200,80,210,83,180,462,170,460);//red-column 1
  quad(330,120,340,123,310,452,300,450);//red-column 2
  fill(153,204,255);//bright window
  quad(409,145,800,230,800,250,400,250);//window 1
  quad(318,243,800,280,800,320,312,322);//window 2
  quad(312,310,800,320,800,360,308.5,350);//window 3
  quad(304.5,390,800,390,800,400,301.5,422);//window 4
  fill(240);
  quad(190,90,800,200,800,230,186.5,140);//white-wall 1
  quad(183.5,175,800,250,800,280,179,235);//white-wall 2
  quad(174.5,290,800,320,800,340,171,320);//white-wall 3 (main)
  quad(313.5,280,800,305,800,320,310,310);//white-wall 3 (sub)
  quad(308.5,350,800,360,800,390,304.5,390);//white-wall 4 (sub)
  quad(301.5,422,800,400,800,425,299.5,457);//white-wall 5 (sub)
  //strokeWeight(1);
  //stroke(200);
  //line(800,200,800,400);//end of wall guide-line
  //line(190,80,160,460);//start of wall guide-line
  //line(330,120,300,450);//mid of wall guide-line
  //noStroke();
  
  //drawing colorcon
  fill(255,107,100);
  triangle(600,492,650,476,630,430);
  triangle(680,467,720,455,705,422);
  triangle(745,447,775,438,762,418);
  triangle(790,434,815,426,804,411);  

  //drawing slope standing light
  fill(153,255,255);
  quad(700,150,710,160,680,551.5,670,550);
  triangle(705,180,630,160,705,155);//light 1
  ellipse(630,170,50,20);
  fill(255,255,204);
  ellipse(630,173,45,18);
  fill(153,255,255);
  triangle(700,152,710.5,162,705,120);//light 2
  ellipse(705,125,20,40);
  fill(255,255,204);
  ellipse(705,128,18,35);
  
  saveFrame("img.jpg");
  
}
