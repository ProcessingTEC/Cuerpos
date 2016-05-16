//Tomas de Camino Beck
void setup() {
  size(600, 600);
  smooth();
}

void draw() {
  //background(255);
  fill(255, 10);
  int x=width/2-75;
  int y =height-200;
  rect(0, 0, width, height);
  //noFill();
 // drawPythagoras(70,200,40,1);
 // drawPythagoras(270,200,40,2);
 // drawPythagoras(470,200,40,3);
  drawPythagoras(width/2,height-80,80,9);
}

void drawPythagoras(int x, int y, int h, int levels){
  rect(x, y, h, h);
  catetos(x, y, h,levels);
  
}

void catetos(float x, float y, float h,int level) {
  if (level>0) {
    pushMatrix();
    translate(x, y);
    //calcuates sides abd angles
    float a = map(mouseX, 0, width, 0, h);
    float b=sqrt(sq(h)-sq(a));
    float ang = PI+atan2(b, a);
    float angA = TWO_PI+(ang);
    //rect(0,0,h,h);

    //draws right squares
    pushMatrix();
    translate(h, 0);
    rotate(ang);
    textSize(24);
    rect(0, 0, a, a);
    rotate(PI);
    catetos(-a,-a,a,level-1);
    popMatrix();

    //draws left square
    pushMatrix();
    rotate(angA);
    rect(0, 0, b, b);
    translate(b,0);
    rotate(HALF_PI);
    catetos(0,0,b,level-1);
        
    popMatrix();  

    popMatrix();
  }
}