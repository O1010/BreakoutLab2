class Wall{
  int width = 500;
  int height = 700;
  float vx,vy;
  float rw;//rwはright wallの略.右の壁に当たったのを判定する為に使う。
  float lw;//lwはleft wallの略.左の・・・。
  float uw;//uwはup wallの略.上の・・・。
  float x_coor;
  float y_coor;
  float d;//ボールの直径。ballクラス
  Wall(){
    x_coor = 250;
    y_coor = 250;
    rw = width;
    lw = 0.0;
    uw = 0.0;
    vx = 2;
    vy = -4;
    d = 60;
    
  }
  void settings(){
  size(width,height);
}
  void setup() {
  }
 
  void draw() {//壁への衝突に対する当たり判定
    if (x_coor + vx + d/2 > rw){
      vx = vx*-1;
    }
    if (x_coor - d/2 + vx <lw){
      vx = vx*-1; 
    }
    if (y_coor - d/2 + vy <uw){
      vy = vy*-1;
    }
    }
    }
