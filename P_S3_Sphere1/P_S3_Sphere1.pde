//Tomas de Camino
void setup() {
  size(600, 600, P3D);
}

void draw() {
  background(0);
  pushMatrix();
  translate(width/2, height/2, -100);
  //rotateX(map(mouseX,0,width,-PI,PI));
  //rotateY(map(mouseY,0,width,-PI,PI));
  strokeWeight(1);
  stroke(255,100);
  noFill();
  box(400);
  pushMatrix();
  translate(0, 0, 0);
  rotateX(map(mouseX,0,width,-PI,PI));
  rotateY(map(mouseY,0,width,-PI,PI));
  sphere(200);
  popMatrix();
  popMatrix();
}