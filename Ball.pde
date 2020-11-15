class Ball{
  private float x,y;    // position 
  private float d;     // tyokkei of ball
  private float vx, vy; // velocity
  private color col;    // color
  
  Ball(){
    x = 250;
    y = 250;
    d = 20;
    vx = 2;
    vy = -4;
    col = color(random(255),random(255),random(255));
  }

  void move(){
    x += vx;
    y += vy;
   }
   
  //atodekesu
   void reflect(){
    vx *= -1;
    vy *= -1;
   }
   
  void reflectX(){
    vx *= -1;
   }
   
  void reflectY(){
    vy *= -1;
   }
   
  void draw(){
    move();
    fill(col);
    noStroke();
    circle(x,y,d);
  }
}
