void setup() {
  size(500, 500);
  noLoop();
}
void draw() {
  background(225);
  for (int y = 540; y > -40; y-=23)
    for (int x = -40; x < 540; x+=30)
      if(y%2 == 0)
         scale(x, y);
      else
         scale(x-15,y);
}
void scale(int x, int y) {
  noStroke();
  int r = (int)(Math.random()*4) + 19;
  fill(70 + (int)(Math.random()* 60), 112 + (int)(Math.random()* 60), 15 +(int)(Math.random()* 60),(int)(Math.random()* 150 + 105));
  triangle(x, y, x-r, y+r, x+r, y+r);
  arc(x, y+r, 2*r, 2*r, 0, PI);
  noStroke();
}
void keyPressed(){
  redraw();
}

