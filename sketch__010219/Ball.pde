class Ball{
  float x,y,r,sy;
  
  Ball(float x,float y){
      this.x=x;
      this.y=y;
      this.r=40;
      this.sy=5;
  }
  
  void display(){
    noStroke();
    fill(255,0,0);
    //ellipseMode(CENTER);
    ellipse(x,y,2*r,2*r);
  }
  
  void move(){
    y+=sy;
    
    if(y<0+r){
      sy=-sy;
      y=0+r;
    }
      if(y>height-r){
        sy=-sy;
        y=height-r;
      }
    
  }
  
  void run(){
    move();
    display();
  }
}
