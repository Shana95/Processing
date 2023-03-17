class Casetta extends Casa{
  Casetta(float x, float y){
    super(x,y);
  }
  
  void display(){
    noFill();
    strokeWeight(3);
    stroke(255);
    rect(x,y,30,30);
    beginShape();
    beginShape();
    vertex(x,y);
    vertex(x+15,y-10);
    vertex(x+30,y);
    endShape(CLOSE);
    fill(255);
    rect(x+13,y+20,3,10);
  }
  
  void move(){
    x+=sx*-1;
    if(x<0-30){
      x=width;
    }
  }
}
