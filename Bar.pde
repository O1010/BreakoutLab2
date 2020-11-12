class Bar{
  private float x,y; //position
  private float w,h; //size
  private color col; 
  
  Bar(){
    x = 50;
    y = 500;
    w = 150;
    h = 30;
    col = color(random(255),random(255),random(255));
  }
  
  void setup() {
    
  }
 
  void draw() {
    fill(col);
    rect(x, y, w, h);
  }
}
