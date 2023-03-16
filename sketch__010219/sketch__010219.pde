Ball b,hb;
int w;
void setup(){
  size(512,256);
  w=width/2;
  b=new Ball(random(1,w),random(1,height));
  hb=new HyperBall(random(w,width),random(1,height));
}

void draw(){
  background(255);
  b.run();
  hb.run();
}

void keyPressed(){
  if(key == 'r' || key == 'R'){
    setup();
  }
}
