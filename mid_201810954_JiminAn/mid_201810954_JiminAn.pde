size(1500,800);//1500,800
background(30);

PFont f1;
//#7586FF #6B9BE8 #82D3FF #6BDDE8 #75FFE5
int[][] harmonicRGB = {{117,134,255},{107,155,232},{130,211,255},{107,221,232},{117,255,229}};
int[][] harmonicRGB2 = {{186,255,239},{249,255,191},{166,195,255},{255,193,172},{226,189,225}};

f1 = loadFont("TimesNewRomanPSMT-200.vlw");


noStroke();
smooth();
float r,x,y;
int t = 0;
for(int a = 0; a < 100; a++){
  r = random(100);
  x = random(width);
  y = random(height);
  if( t == harmonicRGB2.length)
    t = 0;
  fill(harmonicRGB2[t][0], harmonicRGB2[t][1], harmonicRGB2[t][2], 70);
  t++;
  ellipse(x,y,r,r);
}
pushMatrix();
translate(width/2, height/2);
for(int i =  0; i < harmonicRGB.length; i++){
  for(int j = 0; j < 20; j++){
    fill(harmonicRGB[i][0],harmonicRGB[i][1],harmonicRGB[i][2],150);
    triangle(170-(i*30),0,290-(i*30),-70,290-(i*30),70);
    rotate(radians(20));
  }
}
popMatrix();

pushMatrix();
char[][] typo = {{'D','r','e','a','m'},{'Y','o','u','r'}};
int a,b;
a = b = 0;
translate(width/2, height/2);

textFont(f1); 
for(int i = 0; i < 9 ; i++){
  fill(i*20);
  textSize(25);
  if(a == 0 && b == typo[a].length){
    a = 1; b= 0;
  }
  else if(a == 1 && b == typo[a].length){
    a = 0; b = 0;
  }
  text(typo[a][b++],100,0);
  rotate(radians(40));
}

popMatrix();


PImage left_hand= loadImage("left_hand.png");
PImage right_hand= loadImage("right_hand.png");
image(left_hand,450,500,300,300);
image(right_hand,750,500,300,300);

saveFrame("mid_201810954_JiminAn");
