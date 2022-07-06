//Fabiane Castedo  comisión 3
//https://youtu.be/zqVSRgS-fIY
PImage inicia;


PImage ganaste;
PImage perdiste;
// Logica de estados 
int Pantalla = 0;
float radio =15;

int cant = 5 ;
int tam = width/2;// Un ARREGLO EN x e y  de 5 casillas Para el fondo 
float x[] =new float[cant];
float y[] =new float[cant];

// un arreglo que en cada casilla tenga 3 colores 
float c [][]= new float [cant ][3];
int posY= frameCount/1000;
int posX =200;

void setup () {
  size ( 500, 500 );
  inicia = loadImage("inicia.jpg");
  ganaste = loadImage ("ganaste.png");
  perdiste =loadImage ("perdiste.png");
}

void draw (){
  //inicio  
  if ( Pantalla ==0 ){
    image(inicia, 0, 0, width, height);


   textSize(15);
    fill(255);
    stroke(170);
    text ( "teclea cualquier \n tecla \n Para Jugar",mouseX ,  mouseY  ); 
  }
// ARRANACA EL JUEGO
else if ( Pantalla ==1) { 
      juego  ();
      action1(); {
       if (posY> height ){
         posY= -height ;}
        else if (posY==500){
          Pantalla=2;
          // EN EL TRANSCURSO DEL JUEGO LLEGA UN MOMENTO QUE TIENE UN TIEMPO EN EL FOTOGRAMA PARA QU EPIERDA QUE SEVA ACENTUANDO A MEDIDA QUE AVANZA LOS NIVELES DEL JUEGO
          
          
          background (0);
          textSize(20);
          fill(255,0,0);
          text( "PERDISTE \n dale click a tu personaje \n para reiniciar " ,200,200);
          image(perdiste, 250,300, 200, 200);
      }
  
     }}}
 
    
      
    

    
    
    void keyPressed (){
      //Para arrancar la acción de juego oprimo cualquier comando 
    
      if (Pantalla ==0) {
     Pantalla=1;}}
     

  
 void mousePressed () {
 // con un click reinicio 
 if (Pantalla==2){
reiniciar() ;



    // perdio
   
  
 
 }
 else if ( Pantalla==3){
   //con un click reinicio el juego 
 reiniciar();}
 }
