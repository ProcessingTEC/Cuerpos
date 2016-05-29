//Tomas de Camino Beck
void setup(){
  size(600,600);
  background(255);
}

void draw(){
  stroke(0,50);
  strokeWeight(2);
  arrow(width/2,height/2,random(300),random(360));
  
}



//Construye una flecha
void arrow(int x, int y, float l, float ang){
  //para determinar el largo de la punta en 45 grados
  int arrowLength = 10;
  pushMatrix();
  //cambia el eje del dibujo y lo rota
  translate(x, y);
  rotate(radians(ang));
  //dibuja una linea y flecha en el eje X
  line(0,0,l, 0);
  line(l, 0, l - arrowLength, -arrowLength);
  line(l, 0, l - arrowLength, arrowLength);
  popMatrix();
}