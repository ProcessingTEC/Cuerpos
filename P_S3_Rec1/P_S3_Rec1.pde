//Tomas de Camino

void setup() {
  size(600, 600);
  smooth();
}

void draw() {
  background(255);
  translate(width/2, height);
  float angle = map(mouseX,0,width,0, PI);
  float prop = map(mouseY,0,height, 0.1,0.9);
  branch(200,prop,angle);
}

void branch(float len, float p, float a) {
  line(0, 0, 0, -len);
  if (len>10) {
    pushMatrix();
    translate(0, -len);
    rotate(a);
    branch(len*p,p,a);
    popMatrix();
    pushMatrix();
    translate(0, -len);
    rotate(-a);
    branch(len*p,p,a);
    popMatrix();
  }
}