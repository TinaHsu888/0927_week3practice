int heroW=80;
int heroH=120;
int badGuyW=95;
int badGuyH=45;
int bulletR=10;
int bulletSpeed=5;
PImage BackGroundImg,Hero,BadGuy;
int heroX,dy,dRad,dyShit;
int bulletColorR,bulletColorG,bulletColorB,BulletX,BulletY;
int flowerRad1,flowerRad2;
int ShitFront,ShitMiddle,ShitEnd;
void setup() 
{
  size(335, 400);
  BackGroundImg=loadImage("data/bg.png");
  Hero=loadImage("data/hero.png");
  BadGuy=loadImage("data/badguy.png");
  BulletX =167;
  BulletY = 307;
  dy=0;
}

void draw()
{
  heroX=127;
  //Background
  image(BackGroundImg,0,0);

  //Hero
  image(Hero,heroX,284);
  //Badguy
  image(BadGuy,0,0);
  //Bullet
  bulletColorR = floor(random(256));
  bulletColorG = floor(random(256));
  bulletColorB = floor(random(256));
  fill(bulletColorR,bulletColorG,bulletColorB);
  
  BulletY = 307;
  dy += bulletSpeed;
  dy %= 311 ;
  //println(dy);
  BulletY = BulletY - dy;
  //println(BulletY);
  ellipse(BulletX,BulletY,bulletR,bulletR);
  
  //Shit
  fill(#9F5000);
  
  dyShit += 1;
  dyShit %= 323;
  ShitFront = 27 + dyShit ;
  ShitMiddle = 24 + dyShit;
  ShitEnd = 7+ dyShit;
  
  arc(badGuyW/2,ShitFront,10,10,radians(0),radians(360));
  arc(badGuyW/2,ShitMiddle,10,10,radians(0),radians(360));
  arc(badGuyW/2,ShitMiddle-3,10,10,radians(0),radians(360));
  arc(badGuyW/2,ShitMiddle-6,10,10,radians(0),radians(360));
  arc(badGuyW/2,ShitMiddle-10,10,10,radians(0),radians(360));
  arc(badGuyW/2,ShitMiddle-14,10,10,radians(0),radians(360));
  arc(badGuyW/2,ShitEnd,10,10,radians(0),radians(360));
  
  
  //Flower
  stroke(255, 255, 0);
  strokeWeight(3);
  line(badGuyW/2, 365, badGuyW/2, 400);
  noStroke();
  fill(255, 0, 0);
  
  dRad +=1;
  dRad %= 40;
  flowerRad1=(-90+dRad);
  flowerRad2=(270-dRad);
  
  arc(badGuyW/2, 350, 30, 30, radians(flowerRad1), radians(flowerRad2), PIE);
}