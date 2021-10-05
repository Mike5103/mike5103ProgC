void setup(){
  size(800,200);
}

int r = 1;

void draw(){
  background(255);
  
  pushMatrix();
  translate(50+r,125);
  r++;
  rotate(frameCount/10.0);
  circle(0,0,50);
  line(-25,0,25,0);
  line(0,-25,0,25);
  
  popMatrix();
}
