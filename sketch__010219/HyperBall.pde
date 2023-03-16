class HyperBall extends Ball{
  color c;
  
  HyperBall(float x, float y){
    super(x,y);
    c=color(0,0,255);
  }
  
  void display(){
    noStroke();
    fill(c);
    ellipse(x,y,2*r,2*r);
  }
  
  void check(){
    if(dist(x,y,mouseX,mouseY)<r){
      c=color(random(0,255),random(0,255),random(0,255));
    }
  }
  
  void run(){
    check();
    super.run();
  }
}
