class ExtendedLantern extends Lantern{
 
 int lanternPositionX;
 float lanternPositionY;
 float lanternVelocityY;
 PImage lantern;
 
 ExtendedLantern(){
   
   super();
   
   lantern = loadImage("lantern.PNG");
   lanternPositionX = (int)random(490);
   lanternPositionY = (float)random(480);
   lanternVelocityY = (float)random(1.5, 2);
   
   
   
 }
 
  void updatePosition(){
    lanternPositionY -= lanternVelocityY;
    
    if(lanternPositionY < -150){
    lanternPositionX = (int)random(490);
    lanternPositionY = 480;
    
   }
   
  }
  
  void drawLantern(){
    
   image(lantern, lanternPositionX, lanternPositionY, 150, 150); 
    
  }
  
}
