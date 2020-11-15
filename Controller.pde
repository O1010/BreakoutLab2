class Controller{
  Bar bar;
  
  Controller(Bar bar){//Controllerクラスはbarクラスを動かすためのもの
  this.bar = bar;
  }
  
  void moveBar(){
  if((keyPressed == true)&&keyCode==LEFT)bar.arrow = -1;//keyCodeを使って矢印キーでbarを操作できるようにしている。
  else if((keyPressed == true)&&keyCode==RIGHT)bar.arrow = 1;
  else bar.arrow = 0;
  } 

} 
