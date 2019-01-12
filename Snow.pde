class Snow{
  
 int SnowPositionX;
 float SnowPositionY;
 float SnowVelocityY;
 
 Snow(){
  SnowPositionX = (int)random(640);
  SnowPositionY = (float)random(480);
  SnowVelocityY = (float)random(3, 3.5);
   
 }
 
 void updatePosition(){
  SnowPositionY = SnowPositionY += SnowVelocityY;
  
  if(SnowPositionY > 490){
   SnowPositionY = -30; 
   SnowPositionX = (int)random(640);
  }
 }
 
 void drawSnow(){
   noStroke();
  fill(255, 255, 255, 70);
  ellipse(SnowPositionX, SnowPositionY, 20, 20);
 }
  
}
