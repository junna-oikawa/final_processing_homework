class Flower{
 
  PImage flower_k;
  float FlowerPositionX;
  float FlowerPositionY;
  float FlowerSize = 0;
  float FlowerV;
  
  Flower(){
    flower_k = loadImage("hana_koi.PNG");
   FlowerPositionX = (float)random(590);
   FlowerPositionY = (float)random(410);
   FlowerV = (float)random(1,5);
  }
  
  void updatePosition(){
    FlowerSize += FlowerV;
   if(FlowerSize > (float)random(100, 300)){
    FlowerV = 0;
   }
  }
  
  void drawFlower(){
//    imageMode(CENTER);
   image( flower_k, FlowerPositionX, FlowerPositionY, FlowerSize, FlowerSize);
   FlowerPositionX -= FlowerV/2;
   FlowerPositionY -= FlowerV/2;
  }
  
}
