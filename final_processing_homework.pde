import java.awt.event.*;
import javax.swing.*;

int mode = 0;

int r = 0;
int g = 0;
int b = 0;

PImage yuki;
PImage hana;
PImage rantan;
PImage nami;
PImage niji;

float yukiPositionX;
float yukiPositionY;
float hanaPositionX;
float hanaPositionY;
float rantanPositionX;
float rantanPositionY;
float namiPositionX;
float namiPositionY;
float nijiPositionX;
float nijiPositionY;
float yukiv;
float hanav;
float rantanv;
float namiv;
float nijiv;
float vr = 0;
float vu = 0;




PImage flower_k;
PImage flower_u;
int S = 0;

Flower flowerArray[] = new Flower[10];
ExtendedFlower ExtendedFlowerArray[] = new ExtendedFlower[10];


PImage lantern;

float lanternx = -240;
float lanterny = 320;
float lanternxx = 350;
float lanternyy = 900;

int Transrate = 255;

Lantern lanternArray[] = new Lantern[60];
ExtendedLantern ExtendedLanternArray[] = new ExtendedLantern[30];
MottoLantern MottoLanternArray[] = new MottoLantern[30];

PImage nami_1;
PImage nami_2;
PImage nami_3;
PImage nami_4;

int WavePositionX1 = 0;
int WavePositionX2 = -860;
int WavePositionX3 = 0;
int WavePositionX4 = -860;

int WavePositionY1 = 240;
int WavePositionY2 = 240;
int WavePositionY3 = 240;
int WavePositionY4 = 240;

PImage kessyou; 
int KESSYOUX = -20;
int KESSYOUY = -200;
int KESSYOUV = 7; 

int Trans = 255;

Snow snowArray[] = new Snow[150];
ExtendedSnow ExtendedSnowArray[] = new ExtendedSnow[150];
Kessyou kessyouArray[] = new Kessyou[150];

PImage rainbow;
PImage black_left;
int Black_leftX = 640;



void setup(){
  
  size(640, 480);
  colorMode(RGB, 255);
  frameRate(60);
  
  yuki = loadImage("yuki.PNG");
  hana = loadImage("hana.PNG");
  rantan = loadImage("rantan.PNG");
  nami = loadImage("nami.PNG");
  niji = loadImage("niji.PNG");
  
  yukiPositionX = (float)random(540);
  yukiPositionY = (float)random(480);
  hanaPositionX = (float)random(540);
  hanaPositionY = (float)random(480);
  rantanPositionX = (float)random(540);
  rantanPositionY = (float)random(480);
  namiPositionX = (float)random(540);
  namiPositionY = (float)random(480);
  nijiPositionX = (float)random(540);
  nijiPositionY = (float)random(480);
  
  yukiv = (float)random(0.3, 1);
  hanav = (float)random(0.3, 1);
  rantanv = (float)random(0.3, 1);
  namiv = (float)random(0.3, 1);
  nijiv = (float)random(0.3, 1);
  
  flower_k = loadImage("hana_koi.PNG");
  flower_u = loadImage("hana_usu.PNG");
  
  

  ControlWindow controlWindow = new ControlWindow(this); 
  controlWindow.setVisible(true);
  
   for(int i=0; i<10; i++){
  flowerArray[i] = new Flower();
  ExtendedFlowerArray[i] = new ExtendedFlower();
 }
 
 lantern = loadImage("lantern.PNG");
 
 for(int i=0; i<30; i++){
  lanternArray[i] = new Lantern();
  ExtendedLanternArray[i] = new ExtendedLantern();
  MottoLanternArray[i] = new MottoLantern();
 }
 
  nami_1 = loadImage("nami_1.PNG");
  nami_2 = loadImage("nami_2.PNG");
  nami_3 = loadImage("nami_3.PNG");
  nami_4 = loadImage("nami_4.PNG");
  
  kessyou = loadImage("kessyou2.PNG");
  for(int i=0; i<150; i++){
   snowArray[i] = new Snow();
  ExtendedSnowArray[i] = new ExtendedSnow();
  kessyouArray[i] = new Kessyou();
  }  
  
  rainbow = loadImage("rainbow2.PNG");
  black_left = loadImage("black_left.PNG");
  
}

void draw(){
  fill(r, g, b);
  rect(0, 0, 640, 480);
  
  if(mode == 0){
    image(yuki, yukiPositionX, yukiPositionY, 100, 100);
    image(hana, hanaPositionX, hanaPositionY, 100, 100);
    image(rantan, rantanPositionX, rantanPositionY, 100, 100);
    image(nami, namiPositionX,  namiPositionY, 100, 100);
    image(niji, nijiPositionX, nijiPositionY, 100, 100);
    
    yukiPositionY += yukiv + vu;
    hanaPositionY += hanav + vu;
    rantanPositionY += rantanv + vu;
    namiPositionY += namiv + vu;
    nijiPositionY += nijiv +vu;
    
    yukiPositionX += vr;
    hanaPositionX += vr;
    rantanPositionX += vr;
    namiPositionX +=  vr;
    nijiPositionX += vr;
    
    
    
    fill(r, g, b, 10);
    rect(0, 0, 640, 480);
    
    if(yukiPositionY > 480){
      yukiPositionY = -100;
      yukiPositionX = (int)random(640);
      yukiv = (float)random(0.3, 1);
    }
    if(hanaPositionY > 480){
      hanaPositionY = -100;
      hanaPositionX = (int)random(640);
      hanav = (float)random(0.3, 1);
    }
    if(rantanPositionY > 480){
      rantanPositionY = -100;
      rantanPositionX = (int)random(640);
      rantanv = (float)random(0.3, 1);
    }
    if(namiPositionY > 480){
      namiPositionY = -100;
      namiPositionX = (int)random(640);
      namiv = (float)random(0.3, 1);
    }
    if(nijiPositionY > 480){
      nijiPositionY = -100;
      nijiPositionX = (int)random(640);
      nijiv = (float)random(0.3, 1);
    }
    
    fill(r, g, b, Transrate );
    Transrate -= 5;
    rect(0, 0, 640, 480);
    
  }
  if(mode == 1){
    for(int i=0; i<10; i++){
    flowerArray[i].updatePosition();
    flowerArray[i].drawFlower();
    ExtendedFlowerArray[i].updatePosition();
    ExtendedFlowerArray[i].drawFlower();
    }
   filter(BLUR, 1);

  }
  if(mode == 2){
    for(int i=0; i<30; i++){
   lanternArray[i].updatePosition();
   lanternArray[i].drawLantern();
  }
 filter(BLUR, 2); 
 for(int i=0; i<20; i++){
  ExtendedLanternArray[i].updatePosition();
  ExtendedLanternArray[i].drawLantern(); 
 }
 filter(BLUR, 2);
 for(int i=0; i<7; i++){
  MottoLanternArray[i].updatePosition();
  MottoLanternArray[i].drawLantern(); 
 } 
 image(lantern, lanternx, lanterny, 500, 500);
 lanterny -= 5;
 if(lanterny < -500){
  lanterny = 480; 
 }
 image(lantern, lanternxx, lanternyy, 500, 500);
 lanternyy -=5;
 if(lanternyy < -500){
  lanternyy = 480; 
 }
 fill(r, g, b, Trans );
 Trans -= 10;
 rect(0, 0, 640, 480);
  }
  if(mode == 3){
    image(nami_4, WavePositionX4, WavePositionY1);
  image(nami_3, WavePositionX3, WavePositionY2);
  image(nami_2, WavePositionX2, WavePositionY3);
  image(nami_1, WavePositionX1, WavePositionY4);
  
  WavePositionX1 -= 2;
  WavePositionX2 += 2;
  WavePositionX3 -= 2;
  WavePositionX4 += 2;
  
  WavePositionY1 -= 1;
  WavePositionY2 -= 1;
  WavePositionY3 -= 1;
  WavePositionY4 -= 1;
  
  if(WavePositionY1 < 0){
  WavePositionY1 = 0;
  WavePositionY2 = 0;
  WavePositionY3 = 0;
  WavePositionY4 = 0;
  }
  
    if(WavePositionX1 < -840){
    WavePositionX1 = 0;
  }
  if(WavePositionX3 < -840){
   WavePositionX3 = 0; 
  }
  if(WavePositionX2 > 0){
   WavePositionX2 = -805; 
  }
  if(WavePositionX4 > 0){
   WavePositionX4 = -805; 
  }
  
  }
  if(mode == 4){
       filter(BLUR,5);
   
  for(int i=0; i<150; i++){
    snowArray[i].updatePosition();
    snowArray[i].drawSnow();
   }
   
  filter(BLUR,2);
  
    for(int i=0; i<50; i++){
    ExtendedSnowArray[i].updatePosition();
    ExtendedSnowArray[i].drawSnow();
   }
   
   filter(BLUR, 2);
   
   for(int i=0; i<7; i++){
    kessyouArray[i].updatePosition();
    kessyouArray[i].drawKessyou();
   }
   image(kessyou, KESSYOUX, KESSYOUY,300, 300);
   KESSYOUY += KESSYOUV;
   if(KESSYOUY > 640){
    KESSYOUY = -300;
    KESSYOUX = (int)random(500);
   }
   
   filter(BLUR, 1);
   
    fill(r, g, b, Transrate );
    Transrate -= 10;
    rect(0, 0, 640, 480);
  }
  if(mode == 5){
   image(rainbow, 0, 0);
   //image(black_left, Black_leftX, 0);
   fill(r, g, b);
   noStroke();
   rect(0, 0, Black_leftX, 480);
   Black_leftX -= 14;
   filter(BLUR, 1);
  }
  
}

void mousePressed(){
 if (mouseX >= yukiPositionX && mouseX <= yukiPositionX + 100 && mouseY >= yukiPositionY && mouseY <= yukiPositionY + 100){
   mode = 4;
   yukiPositionY = -200;
   yukiv = 0;
   fill(0, 0, 0, Transrate );

 }
 else if( mouseX >= hanaPositionX && mouseX <= hanaPositionX + 100 && mouseY >= hanaPositionY && mouseY <= hanaPositionY + 100){
   mode = 1;
   hanaPositionY = -200;
   hanav = 0;
   fill(0, 0, 0, Transrate );
 }
 else if( mouseX >= rantanPositionX && mouseX <= rantanPositionX + 100 && mouseY >= rantanPositionY && mouseY <= rantanPositionY + 100){
   mode = 2;
   rantanPositionY = -200;
   rantanv = 0;
 }
 else if( mouseX >= namiPositionX && mouseX <= namiPositionX + 100 && mouseY >= namiPositionY && mouseY <= namiPositionY + 100){
   mode = 3;
   namiPositionY = -200;
   namiv = 0;
 }
 else if( mouseX >= nijiPositionX && mouseX <= nijiPositionX + 100 && mouseY >= nijiPositionY && mouseY <= nijiPositionY + 100){
   mode = 5;
   nijiPositionY = -200;
   nijiv = 0;
 }
}

void eventsCalledFromControlWindow(String actionCommand){
  if (actionCommand.equals("rupButton_Pushed")){
  r += 20;
  }
  else if (actionCommand.equals("gupButton_Pushed")){
  g += 20;
  }
  else if (actionCommand.equals("bupButton_Pushed")){
  b += 20;
  }
  else if (actionCommand.equals("rdownButton_Pushed")){
  r -= 20;
  }
  else if (actionCommand.equals("gdownButton_Pushed")){
  g -= 20;
  }
  else if (actionCommand.equals("bdownButton_Pushed")){
  b -= 20;
  }
  else if (actionCommand.equals("colorButton_Pushed")){
  r = 0;
  g = 0;
  b = 0;
  }
  else if (actionCommand.equals("resetButton_Pushed")){
  fill(0, 0, 0, Transrate );
    Transrate = 255;
    mode = 0;
  }
}

void drawball(){
  fill(255);
  ellipse(100, 100, 100, 100);
}

//lantern, wave, snow, rainbow, flower
