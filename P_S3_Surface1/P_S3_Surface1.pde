//Tomas de Camino

int xCount = 30;
int yCount = 30;
int s =20;

void setup() {
  size(600, 600, P3D);
  smooth(8);
  background(255);
}

void draw() {
  translate(0, height/2);  
  rotateX(map(mouseX, 0, width, 0, TWO_PI));
  fill(100,100,255, 100);
  stroke(0,50);
  for (int y = 0; y <= yCount; y++) {  
    beginShape(QUAD_STRIP);
    for (int x = 0; x <= xCount; x++) {
      float z = sin(sqrt(x*x+y*y));
      vertex(x*s, y*s, z*s);
      z = sin(sqrt(x*x+(y+1)*(y+1)));
    }
    endShape();
  }
}