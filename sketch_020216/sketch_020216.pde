PImage Im,Ig,In;
int N=8;
void setup(){
  size(1536,512);
  Im=loadImage("lena.png");
  Ig=imToGray(Im);
  image(Im,0,0);
  image(Ig,512,0);
  In=estraiPianoN(Im,8);
}

void draw(){
  In=estraiPianoN(Ig,N);
  image(Im,0,0);
  image(Ig,512,0);
  image(In,1024,0);
}

PImage imToGray(PImage I){
  PImage R=I.copy();
  R.loadPixels();
  float r,g,b;
  
  for(int i=0; i<R.pixels.length; i++){
    r=red(R.pixels[i]);
    g=green(R.pixels[i]);
    b=blue(R.pixels[i]);
    
    R.pixels[i]=color(0.5*r+0.2*g+0.3*b);
  }
  R.updatePixels();
  return R;
}

PImage estraiPianoN(PImage I, int n){
  PImage R=I.copy();
  int x;
  int r;
  R.loadPixels();
  
  for(int i=0; i<R.pixels.length; i++){
    x=int(red(R.pixels[i]));
    r=(x>>n-1)&1;
    R.pixels[i]=color(255*r);
  }
  R.updatePixels();
  return R;
}

void salvaBitPlane(PImage I){
  PImage toSave;
  for(int i=1; i<=8; i++){
    toSave = estraiPianoN(I,i);
    
    toSave.save("b"+i+".png");
  }
}

void keyPressed(){
  switch(key){
    case'1':
      N=1;
      break;
    case'2':
      N=2;
      break;
    case'3':
      N=3;
      break;
    case'4':
      N=4;
      break;
    case'5':
      N=5;
      break;
    case'6':
      N=6;
      break;
    case'7':
      N=7;
      break;
    case'8':
      N=8;
      break;
   default:
      break;
  }
}
