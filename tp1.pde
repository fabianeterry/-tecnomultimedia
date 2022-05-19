int  Pantalla = 0 ;
/*
0: Inicio
1: titulo 1
2:  Protagonistas principales
3: Protagonistas secundarios
4 : Música y dirección

*/
PImage CLICK ;
PImage ELOJODELJAGUAR ;
PImage  kitty ;

PFont fuente1;

float posX;

void setup ()
{
  size (400 ,400) ;
CLICK = loadImage ("CLICK.png"); 
ELOJODELJAGUAR =  loadImage ("ELOJODELJAGUAR.png");
  fuente1 = createFont("22427194242.ttf",48); 
  kitty =loadImage ("kitty.jpg");
}
  
  void draw (){
  background (224, 225, 0);
 
  if  ( Pantalla ==0) {
    //   pantalla de inicio 
      background (224, 225, 0);
     image (CLICK ,50,50 , 300 , 300  );
 
     }
     else if (Pantalla ==1){
       // titulo 
       background (252,245,3);
      image (ELOJODELJAGUAR, posX,20,500,500 );

     
        
    //posX--;
    posX=posX-3;
    //posX-=2;
    if ( posX < -800 ) {
     //acá pasamos a la pantalla 2:
Pantalla = 2;
     //inicializo las variables dela  Pantalla 2:
     posX = width;
    }
  } else if ( Pantalla ==2 ) {
    //actor principal
   background ( 100,100,100);
   image (kitty, 0,0,400,400); 
    textFont(fuente1);
    fill (28,26,26);
    textSize(50);
    text("Suely Castro     Lucio Gomez ",posX,100);
    posX=posX-2;
    if ( posX < -600 ) {
     //acá pasamos a la pantalla 3:
 Pantalla = 3;
 posX = width ;
    }
     
    
  } else if (Pantalla ==3) {
    //secundarios 
     
     background ( 0, 200,220);
      image (kitty, 0,0,400,400); 
     textSize ( 30 );
    text ( " Carmen Fernandez , Lautaro Romero , Lucas martin " ,posX, 50);
     text ( " Marcos Fontana  Benjamin Garcia karen lorens " ,posX ,350);
     posX=posX-2; }
     if (posX < -1000) {  
       
       Pantalla = 4 ;
       posX = width ;
     
  }else if (Pantalla ==4) {
    //MUSICA Y DIRECCION

     background ( 0, 200,220);
      image (kitty, 0,0,400,400); 

     textSize ( 40 );
     text ( "Dirección Walter Page  Música de laura stefans " ,posX ,100);
     
     posX=posX-3; }
      if (posX < -1000) {  
       
          Pantalla = 0 ; 
          posX = width ;
      } 
      else if ( Pantalla==0){
     

      
     
  
  }
  }


void mousePressed (){
 
if ( Pantalla ==0) {
  Pantalla =1;
  //inicializo 
  //de  pantalla1 :
  
  posX = width + 400;
}
  

  else if  ( Pantalla ==1) {
  }
}
