int estado = 0; //0 inicio 1 jugando;
import processing.sound.*;
//https://youtu.be/la-Zk3Pyy7Y
//declaracion de la variable para el objeto:
bicho[]  bicho;
fondo mifondo;
flores miflores;
fumigador mifumigador;
inicio miinicio;
perdiste miperdiste;
SoundFile soundfile;

int cant = 7;
void setup() {
  size ( 500, 500 );
  mifondo = new fondo ();
  miflores = new flores ();
  mifumigador = new fumigador();
  miinicio =new inicio();
  miperdiste = new perdiste ();
    soundfile = new SoundFile(this, "vibraphon.aiff");
      soundfile.loop();   

}
void draw() { 
  if ( estado ==0 ) {  
    float playbackSpeed = map(mouseX, 0, width, 0.25, 4.0);
  soundfile.rate(playbackSpeed);
  
   
  
      miinicio.dibujar();
    
  } else if (estado ==1) {  
   mifondo.dibujar();

    
    for ( int i=0; i<cant; i++ ) {

      bicho[i].actualizar();
        miflores.dibujar();
         mifumigador.dibujar();
       
    }
  }
else if ( estado ==3){
    float panning = map(mouseY, 0, height, -1.0, 1.0);
  soundfile.pan(panning);
 
  miperdiste.dibujar();
}}
  void keyPressed () {
    if (estado==0)
    { 
      estado=1;
  float playbackSpeed = map(mouseX, 0, width, 0.25, 4.0);
  soundfile.rate(playbackSpeed);
  
 
      bicho  = new bicho [cant] ;

      for ( int i=0; i<cant; i++ ) {
        bicho[i]= new bicho ();
        
      }
   
    }
  }
  
  void mousePressed() { if (estado==1) {
     for ( int i=0; i<cant; i++ )
    bicho[i].setDestino( mouseX, mouseY);
  
  }
 if (estado==3)
 
    estado=0;
    
}
