
class Tierra {
  // LA TIERRA DONDE SE PLANTAN LAS SEMILLAS variables de la clase las propiedades de la clase 
  float x,y,tam ;
  boolean verde;
  // EL CONSTRUCTOR ES EL METODO que se llama igual que la clase en donde se construye 
  
  Tierra (){
  x= 400;
  y= 400;
  verde =true;
}

void actualizar (){
dibujar();
}
void dibujar (){

  if (verde){
    fill (222,166,11);
  
}else { fill(37,232,28);}
  rect ( 0,450,500,80);

}
void fertilizar(){
verde=false ;
rain();}}
void rain() {
fill(255);
float [] x= {451,398,342,264,172,121,106,71,48,900};
float [] y= {1,87,144,109,117,150,96,116,281,900};
 {
for ( int i=0;i<10; i++){
  x[i]=random(width);
  y[i]=random (height);
  rect(x[i],y[i],10,100);
   }}}
