PImage bgImg, basket, egg, breakEgg;
float EGG1_POS,EGG1_SPEED,EGG2_POS,EGG2_SPEED,EGG1_HEIGHT,EGG2_HEIGHT;
float BASKET_X;
boolean hasBrokenEgg1,hasBrokenEgg2;
final int EGG_W = 35;
final int EGG_H = 45;
final int EGG_MIN_X = 25;
final int EGG_MAX_X = 225; 
final int BASKET_W = 100;
final int BASKET_H = 100;
final int BASKET_Y = 310;
final int BASKET_BOUND = 10;
final int BREAKEGG_W = 70;
final int BREAKEGG_H = 70;
final int GROUND_Y = 430;


void setup(){
  size(350, 500);
  bgImg = loadImage("bgImg.png");
  basket = loadImage("basket.png");
  egg = loadImage("egg.png");
  breakEgg = loadImage("breakEgg.png");
  
  EGG1_POS=random(350-EGG_W);
  EGG1_SPEED=random(2,4);
  
  EGG2_POS=random(350-EGG_W);
  EGG2_SPEED=random(2,4);
  //第二顆蛋的位置必須更高才會有速度的差別ss
  EGG2_HEIGHT=-200;
}

void draw() {
  
  
    
    image(bgImg, 0, 0, 350, 500);
    
    //設定籃子的位置必須跟著滑鼠中心
    //設定邊界
    BASKET_X=mouseX-BASKET_W/2;
    if(BASKET_X<0){
    BASKET_X=0;
    }
    if(BASKET_X>350-BASKET_W){
     BASKET_X=350-BASKET_W;
    }
    image(basket,BASKET_X,BASKET_Y,BASKET_W,BASKET_H);
    
    //蛋在隨機的位置下落
    image(egg,EGG1_POS,EGG1_HEIGHT,EGG_W,EGG_H);
    
    image(egg,EGG2_POS,EGG2_HEIGHT,EGG_W,EGG_H);
    
    EGG1_HEIGHT+=EGG1_SPEED;//蛋下落的速度
    EGG2_HEIGHT+=EGG2_SPEED;
    
    
    
    //判斷式內必須設定蛋要在籃子的四個邊界內之後消失,並重置蛋的位子
    if(EGG1_POS>BASKET_X+BASKET_BOUND && 
       EGG1_POS<BASKET_X+BASKET_W-BASKET_BOUND &&
       EGG1_HEIGHT>BASKET_Y+BASKET_H/2 &&
       EGG1_HEIGHT<GROUND_Y){
       EGG1_HEIGHT=0;
       EGG1_POS=random(350-EGG_W);
       EGG1_SPEED=random(2,4);
    }
    
    if(EGG2_POS>BASKET_X+BASKET_BOUND && 
       EGG2_POS<BASKET_X+BASKET_W-BASKET_BOUND &&
       EGG2_HEIGHT>BASKET_Y+BASKET_H/2 &&
       EGG2_HEIGHT<GROUND_Y){
       EGG2_HEIGHT=0;
       EGG2_POS=random(350-EGG_W);
       EGG2_SPEED=random(2,4);
    }
    
    
    //蛋的高度低於地板時會印出破掉的圖
    if(EGG1_HEIGHT>GROUND_Y){
    EGG1_HEIGHT=1000;
    image(breakEgg,EGG1_POS, GROUND_Y,BREAKEGG_W,BREAKEGG_H);
    
    }
    
    if(EGG2_HEIGHT>GROUND_Y){
    EGG2_HEIGHT=1000;
    image(breakEgg,EGG2_POS, GROUND_Y,BREAKEGG_W,BREAKEGG_H);
    
    }
   
    
    //Egg1 Has Broken

    
    //Egg2 Has Broken

    
    //Game Over
    

    //Eggs Drop

   
    //Control Basket Movement
  
    
    //Condition: Egg1 is Catched or Not
   

    //Condition: Egg2 is Catched or Not
  
  
  
}