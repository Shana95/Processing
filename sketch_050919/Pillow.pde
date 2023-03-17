class Pillow{
  float x,y,w,h,sx;
  
  Pillow(float x, float y){
    this.x=x;
    this.y=y;
    this.w=40;
    this.h=80;
    this.sx=2;
  }
  
  void display(){
    noStroke();
    fill(255);
    rectMode(CENTER);
    rect(x,y,w,h);
  }
  
  void move(){
    x+=sx;
    if(x<0){
      sx=-sx;  
      x=0;
    }
    if(x>width){
      sx=-sx;
      x=width;
    }
  }
  
  void run(){
    move();
    display();
  }
}
