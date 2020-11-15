class Controller{
  Bar bar;
  
  Controller(Bar bar){
  this.bar = bar;
  }
  
  void moveBar(){
  if((keyPressed == true)&&key == 'a')bar.arrow = -1;
  else if((keyPressed == true)&&key == 'd')bar.arrow = 1;
  else bar.arrow = 0;
  } 

} 
