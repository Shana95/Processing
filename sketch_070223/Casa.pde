class Casa{
  float x,y,sx;
  
  Casa(float x,float y){
    this.x=x;
    this.y=y;
    this.sx=random(2,10);
  }
  
  void display(){
    noFill();
    strokeWeight(3);
    stroke(255,255,0);
    rect(x,y,30,30);
    beginShape();
    beginShape();
    vertex(x,y);
    vertex(x+15,y-10);
    vertex(x+30,y);
    endShape(CLOSE);
  }

  
  
  void move(){
    x+=sx;
    if(x>width-30){
      sx=-sx;
      x=width-30;
    }
    if(x<0){
      sx=-sx;
      x=0;
    }
  }
  
  void run(){
    move();
    display();
  }
}
