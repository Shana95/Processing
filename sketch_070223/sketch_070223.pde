ArrayList<Casa> c;
ArrayList<Casetta> ch;

void setup(){
  size(500,500);
  background(0);
  
  c=new ArrayList<Casa>();
  ch=new ArrayList<Casetta>();
}

void draw(){
  background(0);
  
  for(Casa c1:c){
    c1.run();
  }
  
  for(Casetta c2:ch){
    c2.run();
  }
  
  
}

void mousePressed(){
  if(mouseButton == LEFT){
    c.add(new Casa(random(0,width),random(0,height)));
  }
  if(mouseButton==RIGHT){
    ch.add(new Casetta(random(0,width),random(0,height)));
  }
}

void keyPressed(){
  if(key=='r' || key== 'R'){ setup(); }
}
