class Fish{
  float x,y,sx,sy;
  color c;
  
  Fish(float x, float y){
    this.x=x;
    this.y=y;
    this.sx=random(1,4);
    this.sy=random(-1.5,1.5);
    this.c=color(random(0,255),random(0,255),random(0,255));
    
  }
  
  void display(){
    pushMatrix();
    fill(c);
    ellipse(x,y,80,50);
    beginShape();
    vertex(x-40,y);
    vertex(x-80,y-25);
    vertex(x-80,y+25);
    endShape(CLOSE);
    fill(0);
    ellipse(x+25,y-10,5,5);
    popMatrix();
  }
  
  void move(){
    x+=sx;
    y+=sy;
  }
  
   Bubble GeneraBolle(){
    
    Bubble R=new Bubble(x+80, y+20);
    
    return R;
    }
    
  void run(){
    move();
    GeneraBolle();
    display();
  }
}
