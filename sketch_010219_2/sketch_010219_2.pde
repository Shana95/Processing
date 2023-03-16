PImage Im, Ih, Ihm;

void setup(){
  size(768,256);
  Im=loadImage("lena.png");
  Im.filter(GRAY);
  Im.resize(256,256);
  image(Im,0,0);
  Ih=hash(Im,int(random(1,256)),int(random(1,256)));
  image(Ih,256,0);
  Ihm = hash(Im,int(random(1,256)),int(random(1,256)), int(random(3,11)));
  image(Ihm,512,0);
}

void draw(){}

PImage hash(PImage I, int h, int k){
   PImage R= I.copy();
   R.updatePixels();
   color c = color(0);
   for(int x=0; x<I.width; x++){
      R.set(x,h,c);
      R.set(x,k,c);
    }
   for(int x=0; x<I.height; x++){
      R.set(h,x,c);
      R.set(k,x,c);
    }
      
  return R;
}

PImage hash(PImage I, int h, int k, int n){
  PImage R=I.copy();
  int off=n/2;
  float[]tmpF=new float[n*n];
  PImage tmp;
  
  for(int x=0; x<I.width; x++){
    for(int y=0; y<I.height; y++){
      tmp=I.get(x-off,y-off, n,n);
      
      tmp.loadPixels();
      for(int i=0; i<tmp.pixels.length; i++){
        tmpF[i]=red(tmp.pixels[i]);
      }
      R.set(x,y,color(max(tmpF)));
    }
  }
  return hash(R,h,k);
}
