PImage Im, Il, Iln;

void setup(){
  size(768,256);
  Im=loadImage("lena.png");
  Im.filter(GRAY);
  Im.resize(256,256);
  image(Im,0,0);
  Il=logOp(Im);
  image(Il,256,0);
  Iln=logOp(Im,(int(random(10,70))),(int(random(10,70))));
  image(Iln,512,0);
}

void draw(){}

PImage logOp(PImage I){
  PImage R=I.copy();
  R.loadPixels();
  float C=255/log(256);
  for(int i=0; i<R.pixels.length; i++){
    R.pixels[i]=color(C*log(1+red(R.pixels[i])));
  }
  R.updatePixels();
  return R;
}

PImage logOp(PImage I, int h, int k){
  PImage R=I.copy();
  PImage tmp = createImage(h,k,RGB);
  int x,y;
  
  tmp.loadPixels();
  for(int i=0; i<tmp.pixels.length; i++){
    tmp.pixels[i]=color(0);
  }
  
  R.updatePixels();
  x=round(random(0,I.width));
  y=round(random(0,I.height));
  R.set(x-h,y-k,tmp);
  
  return logOp(R);
}


void keyPressed(){
  if(key == 'r' || key== 'R'){ setup(); }
}
