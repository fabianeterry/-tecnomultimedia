class bicho{
 float x, y, despX, despY;
 float dir, vel;
 PImage bicho;
 float diam; 
 PImage perdiste; 
  
float destX, destY;

  bicho(){
    x=random (width);
    y=random( height);
    dir = random( TWO_PI );
    vel = random ( 1,3);
    diam=50;
    destX = random(width);
    destY = random(height);
    bicho= loadImage("data/bicho.png");
  perdiste = loadImage("data/perdiste.jpg");}
    
  void actualizar() {
    mover();
    dibujar();
  }
    
   void dibujar() {
    push();
    translate(x, y);
    rotate(dir);
    imageMode(CENTER);
    image(bicho, 0, 0, diam, diam);
    pop();
   
  }
  void mover (){
  //orienta la direccion hacia destino:
    float dirFinal = atan2(destY-y, destX-x);
    //dir+= (dirFinal-dir)*.05;
    dir = dirFinal;

    despX = cos(dir);
    despY = sin(dir);
    x+=despX; 
    y+=despY;

    //TODO: comprobar si alcancé el destino
    if ( dist(x, y, destX, destY)<diam/2 ) {
      destX = random(width);
      destY = random(height);
      vel = random(-6, 0);
    
  }
  else if (dist(x, y, destX, destY)<28) {
    estado=3;{

  float panning = map(mouseY, 0, height, -1.0, 1.0);
  soundfile.pan(panning);
   image(perdiste, 0,0);
}
  }
  }
 void setDestino( float newDestinoX_, float newDestinoY_ ) {
    destX = newDestinoX_;
    destY = newDestinoY_;}}
