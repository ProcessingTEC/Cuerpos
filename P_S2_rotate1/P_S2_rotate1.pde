//Tomas de Camino Beck

float angle1=0;
float angle2=0;

void setup(){
  size(600,600);
  background(255);
  smooth();
}

void draw(){
  fill(255,100);
  rotate(angle1);
  rect(10,10,50,50);
  //crea nuevo marco de referencia
  pushMatrix();
  translate(width/2,height/2);
  rotate(angle2);
  rect(10,10,100,100);
  popMatrix();
  angle1+=0.01;
  angle2+=0.1;
}