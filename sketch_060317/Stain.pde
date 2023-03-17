class Stain{
  float x,y,d;
  color c;
  
  Stain(){
    this.x=random(50,650);
    this.y=-30;
    this.d=random(10,50);
    this.c=color(random(0,255),random(0,255),random(0,255));
  }
  
  void display(){
    noStroke();
    fill(c);
    ellipse(x,y,d,d);
  }
  
  void move(){
    x+=random(-1,1);
    y+=random(0,4);
  }
  
  void delete(){
    x-=width*2;
    y = height;
  }
  
  void run(){
    move();
    display();
  }
}
