float x_coordinate = 50.0;
float speed = 4.0;

void settings(){
  int width = 500;
  int length = 700;
  size(width,length);
}
void setup(){

}

void draw(){
  background(200);
  if ((keyPressed == true)&&(key=='k')){
    x_coordinate += speed;
  }
  rect(x_coordinate,530,80,80);
  if ((keyPressed == true)&&(key=='j')){
    x_coordinate -= speed;
  }
  rect(x_coordinate,530,80,80);
}


    
