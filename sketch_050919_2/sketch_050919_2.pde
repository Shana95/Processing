PImage Im, Ib, Ib2;

void setup(){
  size(768,256);
  Im=loadImage("lena.png");
  Im.resize(256,256);
  image(Im,0,0);
  Ib=sBlock(Im,int(random(10,80)));
  image(Ib,256,0);
  Ib2=sBlock(Im,int(random(10,80)),random(0.5,1.5));
  image(Ib2,512,0);
}

void draw(){}

PImage sBlock(PImage I, int h){
  PImage R=I.copy();
  PImage tmp=createImage(h,h,RGB);
  int x,y;
  
  tmp.loadPixels();
  for(int i=0; i<tmp.pixels.length; i++){
    tmp.pixels[i]=color(50,150,255);
  }
  x=round(random(0,I.width));
  y=round(random(0,I.height));
  
  R.set(x-h,y-h,tmp);
  
  x=round(random(0,I.width));
  y=round(random(0,I.height));
  
  R.set(x-h,y-h,tmp);
  
  R.updatePixels();
  return R;
  
  
}

PImage sBlock(PImage I, int h, float s){
  PImage G=sBlock(I,h);
  PImage R=createImage(G.width, G.height, RGB);
  R.updatePixels();
  for(int i=0; i<R.pixels.length; i++){
    R.pixels[i]=color(0);
  }
  
  float u1,v1;
  float x,y;
  
  for(int u=0; u<G.width; u++){
    for(int v=0; v<G.height; v++){
      
      u1=u-G.width/2;
      v1=v-G.height/2;
      
      x=u1*s;
      y=v1*s;
      
      x=x+G.width/2;
      y=y+G.height/2;
      
      R.set(round(x),round(y),G.get(u,v));
    }
  }
  return R;
}


void keyPressed(){
  if(key == 'r' || key=='R'){ setup(); }
}
