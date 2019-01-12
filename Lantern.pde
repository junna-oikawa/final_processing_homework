class Lantern{
 
 int lanternPositionX;
 float lanternPositionY;
 float lanternVelocityY;
 PImage lantern;
 
 Lantern(){
   
   lantern = loadImage("lantern.PNG");
   lanternPositionX = (int)random(560);
   lanternPositionY = (float)random(480);
   lanternVelocityY = (float)random(0.2, 0.7);
   
   
   
 }
 
  void updatePosition(){
    lanternPositionY -= lanternVelocityY;
    
    if(lanternPositionY < -100){
    lanternPositionX = (int)random(560);
    lanternPositionY = 480;
    
   }
   
  }
  
  void drawLantern(){
    
   image(lantern, lanternPositionX, lanternPositionY, 80, 80); 
    
  }
  
}
