class Sponge{
  float x,y,L;
  color c;
  
  Sponge(float x, float y){
    this.x=x;
    this.y=y;
    this.L=30;
    this.c=color(200,200,100);
  }
  
  void display(){
    noStroke();
    fill(c);
    rectMode(CENTER);
    rect(x,y,L,L);
  }
  
  void move(){
    x=mouseX;
    y=mouseY;
  }
  
  boolean adsorb(Stain s){
    if(dist(s.x,s.y,x,y)<L/2){
    L+=(s.d)/2;
    
    float r,g,b;
    r=(red(s.c)+red(c))/2;
    g=(green(s.c)+green(c))/2;
    b=(blue(s.c)+blue(c))/2;
    
    c=color(r,g,b);
    
    return true;
    }
    return false;
  }
  
  void run(){
    move();
    display();
  }
}
