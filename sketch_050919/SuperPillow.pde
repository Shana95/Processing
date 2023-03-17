class SuperPillow extends Pillow{
  float a;
  
  SuperPillow(float x, float y){
    super(x,y);
    a=random(0,360);
  }
  
  void display(){
    noStroke();
    fill(255);
    rectMode(CENTER);
    
    pushMatrix();
    translate(x,y);
    rotate(radians(a));
    rect(0,0,w,h);
    popMatrix();
    fill(127);
    ellipse(x,y,w,w);
  }
  
  void move(){
  
    if(dist(x,y,mouseX,mouseY)<w/2){
      a+=5;
    }
    super.move();
  }
}
