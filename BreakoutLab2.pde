Ball ball;
Bar bar;
ArrayList<Block> blocks;
Wall wall;
Controller controller;

void setup(){
  size(800, 600);
  frameRate(30);
  smooth();
  
  ball = new Ball();
  bar = new Bar();
  wall = new Wall();
  controller = new Controller(bar);
  
  blocks = new ArrayList<Block>();
  for(int j=0;j<3;j++){
    for(int i=0;i<8;i++){   
      noStroke();
      Block bl = new Block(i*100, j*30);
      blocks.add(bl) ;
      }
    }  
}

 
void draw(){
  background(0);
  bar.reflect(ball);
  wall.reflect(ball);
  ball.draw();
  bar.draw();
  
  for(Block bl : blocks) {    
    if(bl.is_alive){
      bl.draw();
    }
    if(bl.isHit(ball)) {
      bl.reflect(ball);
      bl.is_alive = false;
    }
  }
  controller.moveBar();
}
