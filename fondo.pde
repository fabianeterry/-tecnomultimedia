class fondo{
  PImage jardin;
  fondo (){
    jardin= loadImage("data/fondo.jpg");}
  void dibujar(){
  image(jardin,0,0);}
}
