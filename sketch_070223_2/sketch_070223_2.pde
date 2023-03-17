PImage Im, Iw;

void setup(){
  size(512,256);
  Im=loadImage("lena.png");
  Im.resize(256,256);
  image(Im,0,0);
  Iw=wow(Im);
  image(Iw,256,0);
}

void draw(){}

PImage wow(PImage I){
  PImage R=createImage(I.width, I.height, RGB);
  PImage tmp;
  
  tmp=I.get(I.width/2,0,I.width,I.height);
  R.set(0,0,tmp);
  tmp=I.get(0,0,I.width/2,I.height);
  R.set(I.width/2,0,tmp);
  R.loadPixels();
  float percentuale=(random(0,100)*R.pixels.length/100);
  float r,g,b;
  
  for(int i=0; i<percentuale; i++){
      
    r=red(R.pixels[i]);
    g=green(R.pixels[i]);
    b=blue(R.pixels[i]);
    
    R.pixels[i]=color(b,g,r);
   }
   
  for(int i=int(percentuale); i<R.pixels.length; i++){
    r=red(R.pixels[i]);
    g=green(R.pixels[i]);
    b=blue(R.pixels[i]);
    
    R.pixels[i]=color(r,b,g);
    
  }
    

  return R;
}

void keyPressed(){
  if(key=='r' || key=='R'){ setup(); }
}
