class floor{
  int width;
  int height;
  float vx,vy;
  float fl;//floorの略
  float x_coor;//coordinate 　xの座標の宣言
  float y_coor;//yの座標の宣言
  float d;//ボールの直径
  floor(){
  width = 500;
  height = 700;
  fl = height;
  vx = 2;
  vy = -4;
  }
  
void settings(){
    size(width,height);
}
void gameOver(){
   textSize(100);
   text("GameOver",width/2,height/2);
}
  
  void setup() {
  }
    
  void draw() {
    if(y_coor + vy + d/2 > fl){
      noLoop();
      gameOver();
    }
    }
  
  
}
