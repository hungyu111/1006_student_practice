PImage bgImg, basket, egg, breakEgg;
float EGG_POS,EGG_SPEED,speed;
float BASKET_X,EGG_HEIGHT;
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
  
  EGG_POS=random(350-EGG_W);
  EGG_SPEED=random(2,4);
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
    image(egg,EGG_POS,EGG_HEIGHT,EGG_W,EGG_H);
    
    EGG_HEIGHT+=EGG_SPEED;//蛋下落的速度
    
    
    
    //判斷式內必須設定蛋要在籃子的四個邊界內之後消失,並重置蛋的位子
    if(EGG_POS>BASKET_X+BASKET_BOUND && 
       EGG_POS<BASKET_X+BASKET_W-BASKET_BOUND &&
       EGG_HEIGHT>BASKET_Y+BASKET_H/2 &&
       EGG_HEIGHT<GROUND_Y){
       EGG_HEIGHT=0;
       EGG_POS=random(350-EGG_W);
       EGG_SPEED=random(2,4);
    }
    
    
    //蛋的高度低於地板時會印出破掉的圖
    if(EGG_HEIGHT>GROUND_Y){
    EGG_HEIGHT=1000;
    image(breakEgg,EGG_POS, GROUND_Y,BREAKEGG_W,BREAKEGG_H);
    
    }
   
    
    //Egg1 Has Broken
    
    
    //Egg2 Has Broken

    
    //Game Over
    

    //Eggs Drop

   
    //Control Basket Movement
  
    
    //Condition: Egg1 is Catched or Not
   

    //Condition: Egg2 is Catched or Not
  
  
  
}

//void mouseClicked(){
  //if(!isPlaying){
  //}
//}