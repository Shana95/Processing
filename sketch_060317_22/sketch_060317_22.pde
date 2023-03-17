PImage Im;
boolean first = true;
int s=80;
int x,y;


void setup(){
  size(512,512);
  Im=loadImage("lena.png");
  image(Im,0,0);
}

void draw(){
  
  
  if(!first){
    image(Im,0,0);
    noFill();
    noStroke();
    fill(0,0,255,40);
    rect(x,y,s,s);
    noFill();
    stroke(0);
    rectMode(CENTER);
    rect(mouseX,mouseY,s,s);
    
  }
  else{
    image(Im,0,0);
    noFill();
    stroke(0);
    rectMode(CENTER);
    rect(mouseX,mouseY,s,s);
    
  }
  
  
}


PImage swap(PImage I, int x1, int y1, int x2, int y2, int s){
  PImage R=I.copy();
  PImage tmp1=I.get(x1-s/2,y1-s/2,s,s);
  PImage tmp2=I.get(x2-s/2,y2-s/2,s,s);
  R.set(x2-s/2,y2-s/2,tmp1);
  R.set(x1-s/2,y1-s/2,tmp2);
  
  
  return R;
}

void mousePressed(){
  if(first){
    x=mouseX;
    y=mouseY;
    first=false;
    
    if(x-s/2 < 0)
      x+= s/2;

    if(y-s/2 < 0)
      y+= s/2;
      
    if(x+s/2 > width)
      x-= s/2;

    if(y+s/2 > height)
      y-= s/2;
  }
  
  else{
    Im=swap(Im,x,y,mouseX,mouseY,s);
    first=true;
  }
}

void keyPressed(){
  if (key == '+' && s<150 && first){
    s+=10;
  }
  
  if(key == '-' && s>30 && first ){
    s-=10;
  }
}
