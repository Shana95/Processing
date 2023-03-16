Block b;
AmazingBlock ab;
float h;

void setup(){
  size(256,512);
  h=height/2;
  b= new Block(random(0,width), random(0, h));
  ab= new AmazingBlock(random(0,width), random(h, height));
}

void draw(){
  background(255);
  b.run();
  ab.run();
}

void keyPressed(){
  if(key == 'r' || key == 'R'){ setup(); }
}
