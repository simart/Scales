public void setup(){
  size(800,800,P3D);

}
public void draw(){
  rotateX(mouseY/800.0);
  pointLight(255, 0, 255, 140, 160, 144);
  for(int y = 840; y > -100; y = y - 30)
    for(int x = 0; x < 850; x = x + 60)
      if(y%60==0)
        scale(x+30,y);
      else
        scale(x,y);
}
public void scale(int x, int y){
  //for(int i = 60; i > 0; i--){
  //    stroke(i*4);
  //    ellipse(x,y,i,i*1.5);
  //}
  translate(x,y);
  sphere(30);
  translate(-x,-y);
}

