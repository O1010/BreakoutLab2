class Bar{
  private float x,y; //position
  private float w,h; //size
  private color col; 
  private int speed;
  public int arrow;// 0=Stop 1=Right -1=Left
  
 
  Bar(){
    x = 50;
    y = 500;
    w = 150;
    h = 30;
    speed = 20;
    arrow = 0;
    col = color(0,0,255);
  }
  
  void move(){
    x += speed*arrow;
  }

  boolean isHit(Ball b){
    if((b.x + b.d/2 > this.x && b.x - b.d/2 < (this.x+w)) 
        &&(this.y < b.y - b.d/2 && b.y - b.d/2 < (this.y+h))) return true;
    return false;
  }
  
  void reflect(Ball b){
    if(isHit(b))b.reflectY();
  }
  
  void draw() {
    move();
    fill(col);
    rect(x, y, w, h);
  }
}
