class Ball{
  private float x,y;    // position 
  private float d;     // tyokkei of ball
  private float vx, vy; // velocity
  private color col;    // color
  
  Ball(){
    x = 250;
    y = 250;
    d = 60;
    vx =2;
    vy =-4;
    col = color(random(255),random(255),random(255));
  }

  
  void move(float d, Bar ba){
    x -= vx*d;
    y += vy*2*d;
    
    //reflect on wall
    if(x + d/2 > width) vx *= -1; 
    if(x - d/2 < 0) vx *= -1;
    if(y - d/2 < 0) vy *= -1;
    
    //reflect on bar
    if((x + d/2 > ba.x && x - d/2 < ba.x+ba.w)  
    &&(ba.y < y + d/2 && y + d/2 < ba.y+ba.h)){ 
      vy *= -1;
    }
  }
  
  void setup() {
  }
 
  void draw() {
    fill(col);
    noStroke();
    circle(x,y,d*2);
  }

  

}
