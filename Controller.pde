class Controller{
    float x_coordinate;//x座標の宣言
    float speed;//速度の宣言
    
    Controller(){
    x_coordinate = 40.0;
    speed = 5.0;
    }
void settings(){//settings関数を使ってウィンドウサイズの設定を行なっている。
    int width = 500;//ウィンドウサイズの横幅
    int height = 700;//ウィンドウサイズの縦幅
    size(width,height);
}
void setup(){

}

void draw(){
  background(200);//背景の設定
  if ((keyPressed == true)&&(key=='k')){//kを押すと次の処理を行う。
  x_coordinate += speed;//x座標にスピードの値を足している。x成分が増えていく為右に動くようになっている。
  }
  //rect(x_coordinate,580,80,40); //barクラスの情報
  if ((keyPressed == true)&&(key=='j')){//jを押すと次の処理を行う。
    x_coordinate -= speed;//x座標（x_coordinate)から、スピードの値を引いている。x成分が減るので左に動くようになっている。
  }
  //rect(x_coordinate,580,80,40);//barクラスの情報
}
}
    
