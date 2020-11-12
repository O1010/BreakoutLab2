class Ball{
  private float x,y;    // position 
  private float vx, vy; // velocity
  private color col;    // color
  
  Ball(){
    x = random(width);
    y = random(height);
     
    float v =0 ;
    vx =1;
    vy = -2;
     
    col = color(random(255),random(255),random(255));

  }
  
  void is_Hit(Ball b)
  {
     float dx = b.x - x;
     float dy = b.y - y;
     
     if(sqrt(dx*dx+dy*dy) < 5*2)
     {
        float tvx = b.vx;
        float tvy = b.vy;
        
        b.vx = vx;
        b.vy = vy;
        vx = tvx;
        vy = tvy;
     }
  }

  
  void move(float d){
    x += vx*d;
    y += vy*d;

    if(x < 0 || width < x) {
       vx = -vx;
    }
    
    if(y < 0 || height < y) {
      vy = -vy;
    }

    
  }
  
  
  
  void setup() {
   

  }
 
  void draw() {

    
  }

  

}
