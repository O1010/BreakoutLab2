class Block{
  private float w, h; //size
  private float x, y; //position
  private color col;
  private boolean is_alive;  
  
  Block(float x, float y){
    w = 100;
    h = 30;
    this.x = x;
    this.y = y;
    is_alive = true;
    col = color(random(255),random(255),random(255)); 
  }
  
  boolean isHit(Ball b){
    if((b.x + b.d/2 > this.x && b.x - b.d/2 < (this.x+w)) 
        &&(this.y < b.y - b.d/2 && b.y - b.d/2 < (this.y+h))) return true;
    return false;
  }
  
  void reflect(Ball b){
    if(isHit(b))b.reflect();
  }
  
  void draw(){  
    fill(col);
    noStroke();
    rect(x, y, w, h);    
  }
}
 
