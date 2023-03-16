ArrayList<Bubble> bs;
ArrayList<Fish> fs;
void setup(){
  size(500,500);
  background(0);
  bs=new ArrayList<Bubble>();
  fs=new ArrayList<Fish>();
}

void draw(){
  background(0,200,200);
  
  for(Bubble b1:bs){
    b1.run();
  }
  for(Fish f1:fs){
    
    f1.run();
    
    if(random(0,1)<0.02){
      bs.add(f1.GeneraBolle());
    }
   
  }
  
  
}


void keyPressed(){
  if (key == 'n' || key == 'N'){
    //bs.add(new Bubble(random(0,width),random(0,height)));
    fs.add(new Fish(random(0,width),random(0,height)));
  }
}
