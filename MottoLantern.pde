class MottoLantern extends Lantern{
 
 float lanternPositionX;
 float lanternPositionY;
 float lanternVelocityY;
 PImage lantern;
 
 MottoLantern(){
   
   super();
   
   lantern = loadImage("lantern.PNG");
   lanternPositionX = (float)random(390);
   lanternPositionY = (float)random(480);
   lanternVelocityY = (float)random(3, 3.5);
   
   
   
 }
 
  void updatePosition(){
    lanternPositionY -= lanternVelocityY;
    
    if(lanternPositionY < -250){
    lanternPositionX = (float)random(390);
    lanternPositionY = 480;
    
   }
   
  }
  
  void drawLantern(){
    
   image(lantern, lanternPositionX, lanternPositionY, 250, 250); 
    
  }
  
}
