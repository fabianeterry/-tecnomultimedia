//* Fabiane Castedo  comision 3 *//

//  Dirección del trabajo https://www.youtube.com/watch?v=CfwpW85QUfs



int  cant = 20 ;
int  tam ;
int  inicio  ;int cantX =15 , cantY= 30 ;
float f1 , f2 ;
float  ancho , sentido =1 ;



void setup() {
    size ( 500, 500 );

   
}

void draw (){
 float color1 = random (100,150);

  background ( 257,0,8);
  
  tam =  width /cant  ; 
  textSize ( 30);
   text ( " PRESIONA 1 , 2 o 3  ", 0, 150 , 100);
   text ( " en distinto orden  y experimenta sensaciones opticas ",  0,200 );
   textSize ( 50);
   fill (color1, 10, 220 );
   text ( " 0 PARA REINICIAR ",0,300);

{ {
    if ( key == '1' ) {
   Malla (); 
      } if  ( key =='2')
      {
    Malla2 () ;
  }
    if  ( key == '3') {
     
 Malla3 () ;
  

  }
}}}

   
  
   
 
 
  // Alternando el 1 , 2 o 3 puedo ir jugando con cada pantalla y obteniendo varios tipos de sensaciones .
