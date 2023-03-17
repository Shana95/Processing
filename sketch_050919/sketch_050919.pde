
Pillow p;
SuperPillow sp;
float h;
void setup(){
  size(256,512);
  background(0);
  h=height/2;
  p=new Pillow(random(1,width),random(1,h));
  sp=new SuperPillow(random(1,width),random(h,height));
}


void draw(){
  background(0);
  p.run();
  sp.run();
}
