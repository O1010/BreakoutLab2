class Block{
  private float w, h; //size
  private float x, y; //position
  private color col;
  private boolean is_alive;  
  ArrayList<Block> blocks = new ArrayList<Block>();
  
  Block(){
    w = 100;
    h = 30;
    x = 0;
    y = 0;
    is_alive = true;
    col = color(random(255),random(255),random(255)); 
    
    
  }
  
  void is_Hit(Ball b,  Block bl)
  {
    if((b.x + b.d/2 > bl.x && b.x - b.d/2 < (bl.x+w)) 
        &&(bl.y < b.y - b.d/2 && b.y - b.d/2 < (bl.y+h))&& bl.is_alive){
          b.vy *= -1;
          b.y = b.d/2 + (bl.y/h+1)*h+1;
          bl.is_alive = false;
        } 
  }
  
  void setup() {
    for(int j=0;j<3;j++){
      for(int i=0;i<8;i++){   
          noStroke();
          Block bl = new Block();
          bl.x = i*w;
          bl.y = j*h;
          blocks.add( bl ) ;
        }
      }
      for(int i=0; i<8; i++){
        for(int j=0; j<3; j++){
          is_alive = true; 
        }   
      }
  }
 
  void draw(Ball b) {
    for(Block bl : blocks) {
        if(bl.is_alive){
          fill(bl.col);
          noStroke();
          rect(bl.x, bl.y, bl.w, bl.h);
        }
        is_Hit(b, bl);
      }
    }
}
 
