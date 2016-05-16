class Pythagoras_Obj{
 PVector sq1,sq2,sq3;
 PVector o1;
 float op,ad,hyp;
 float angB,angA;
  
  Pythagoras_Obj(float x, float y,float h,float adj){
    o1 = new PVector(x,y,0);
 //   adj = a;
    hyp = h;
    op =sqrt(sq(hyp)-sq(adj));
    angB = PI+atan2(op, adj);
    angA = TWO_PI+(angB); 
  }
 
 
  
}