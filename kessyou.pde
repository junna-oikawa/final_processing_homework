class Kessyou{
  
 int KessyouPositionX;
 float KessyouPositionY;
 float KessyouVelocityY;
 PImage kessyou;
 
 Kessyou(){
   kessyou = loadImage("kessyou2.PNG");
  KessyouPositionX = (int)random(640);
  KessyouPositionY = (float)random(480);
  KessyouVelocityY = (float)random(3, 3.5);
   
 }
 
 void updatePosition(){
  KessyouPositionY = KessyouPositionY += KessyouVelocityY;
  
  if(KessyouPositionY > 490){
   KessyouPositionY = -30; 
   KessyouPositionX = (int)random(640);
  }
 }
 
 void drawKessyou(){
  image(kessyou, KessyouPositionX, KessyouPositionY, 40, 40);
 }
  
}
