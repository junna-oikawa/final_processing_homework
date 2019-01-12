class ExtendedSnow extends Snow{
  
 int SnowPositionX;
 float SnowPositionY;
 float SnowVelocityY;
 
 ExtendedSnow(){
   
   super();
   
  SnowPositionX = (int)random(640);
  SnowPositionY = (float)random(480);
  SnowVelocityY = (float)random(6, 6.5);
   
 }
 
 void updatePosition(){
  SnowPositionY = SnowPositionY += SnowVelocityY;
  
  if(SnowPositionY > 490){
   SnowPositionY = -40; 
   SnowPositionX = (int)random(640);
  }
 }
 
 void drawSnow(){
   noStroke();
  fill(255, 255, 255, 90);
  ellipse(SnowPositionX, SnowPositionY, 40, 40);
 }
  
}
