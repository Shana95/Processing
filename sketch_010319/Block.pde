class Block{
  float x,y,w,h,sx;
  
  Block(float x, float y){
    this.x=x;
    this.y=y;
    this.w=40;
    this.h=60;
    this.sx=4;
  }
  
  void display(){
    noStroke();
    fill(0,255,0);
    rectMode(CENTER);
    rect(x,y,w,h);
  }
  
  void move(){
    x+=sx;
    if(x<0 || x>width){
      sx=-sx;
    }
  }
  
  void run(){
    move();
    display();
  }
}
