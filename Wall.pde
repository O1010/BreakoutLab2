class Wall{
  
  int right,left,top;
  
  Wall(){
    left = 0;
    right = width;
    top = 0;
  }
  
  boolean isSideHit(Ball b){
    if(b.x <= this.left)return true;
    if(b.x >= this.right)return true;
    return false;
  }
  
  boolean isTopHit(Ball b){
    if(b.y <= this.top)return true;
    return false;
  }
  
  void reflect(Ball b){
    if(isSideHit(b))b.reflectX();
    if(isTopHit(b))b.reflectY();
  }
  
}
