PImage Im, Iq, Il;
//int k;
int N;

void setup(){
  size(768,280);
  Im=loadImage("lena.png");
  Im.resize(256,256);
  Im.filter(GRAY);
  N=10;
  image(Im,0,0);
  Iq=uniQuant(Im,N);
  image(Iq,256,0);
  Il=logQuant(Im, N);
  image(Il,512,0);
}

void draw(){
  background(0);
  image(Im,0,0);
  image(Iq,256,0);
  image(Il,512,0);
  fill(255);
  textSize(14);
  text("Originale", 30, height - 10);
  text("Uniforme", 286, height - 10);
  text("Logaritmica", 542, height - 10);
  textSize(18);
  text(N,30,20);
}


PImage uniQuant(PImage I, int k){
  PImage R=I.copy();
  int q;
  R.loadPixels();
  for(int i=0; i<R.pixels.length; i++){
    q=floor(red(R.pixels[i])*k)/256;
    q=int((float(q)/(k-1))*255);
    
    R.pixels[i]=color(q);
  }
  return R;
}


PImage logQuant(PImage I, int k){
  PImage R=I.copy();
  int q;
  R.loadPixels();
  for(int i=0; i<R.pixels.length; i++){
    float p=red(R.pixels[i]);
    q=int(floor(log(p)*k)/log(256));
    q=int((float(q)/(k-1))*255);
    
    R.pixels[i]=color(q);
  }
  return R;
}

void keyPressed(){
  if(key == '+' && N<256){
    N++;
    Iq=uniQuant(Im,N);
    Il=logQuant(Im, N);
    image(Iq,256,0);
    image(Il,512,0);
    
  }
  
  if(key == '-' && N>2){
    N--;
    Iq=uniQuant(Im,N);
    Il=logQuant(Im, N);
    image(Iq,256,0);
    image(Il,512,0);
  }
}
