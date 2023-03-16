class Bubble{
  float x,y,sy,d;
  
  Bubble(float x, float y){
    this.x=x;
    this.y=y;
    this.d=random(10,30);
    this.sy=d/10;
  }
  
  void display(){
    //noStroke();
    pushMatrix();
    fill(0,255,255);
    ellipseMode(CENTER);
    ellipse(x,y,d,d);
    fill(255);
    ellipse(x-d/4,y-d/4,d/4,d/4);
    popMatrix();
  }
 
  void move(){
    y+=sy*-1;
    
    
  }
  
  void run(){
    move();
    display();
  }
}
