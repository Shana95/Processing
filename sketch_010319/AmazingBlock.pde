class AmazingBlock extends Block{
  float a;
  
  AmazingBlock(float x, float y){
    super(x,y);
    a=random(0,360);
  }
  
  void display(){
    noStroke();
    fill(a%256,255-a%256,255);
    rectMode(CENTER);
    pushMatrix();
    translate(x,y);
    rotate(radians(a));
    rect(0,0,w,h);
    popMatrix();
  }
  
  void move(){
    
   
    a+=5;
    super.move();
  }
  
  
}
