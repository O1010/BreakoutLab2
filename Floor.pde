class Floor{
  int bottom;
  Floor(){
    bottom = height;
  }

  void setup() {

size(width,height);
  }

    boolean isBottomHit(Ball b){
    if(b.y >= this.bottom)return true;
    return false;
    }
    void stopball(Ball b){
      if(isBottomHit(b))b.stopball();
    }
}
