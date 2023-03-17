Sponge spon;
ArrayList<Stain> s;
void setup(){
  size(700,700);
  background(0,225,255);
  spon=new Sponge(random(0,width),random(0,height));
  s=new ArrayList<Stain>();
  
}

void draw(){
  background(0,225,255);
  
  for(Stain s1:s){
    spon.adsorb(s1);
    s1.run();
    if(spon.adsorb(s1)){
      s1.delete();
    }
  }
  
  spon.run();
}

void keyPressed(){
  if(key == 'S' || key == 's'){
    s.add(new Stain());
  }
  
  if(key == 'R' || key == 'r'){
    spon=new Sponge(random(0,width),random(0,height));
  }
}
