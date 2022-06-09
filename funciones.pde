

 void Malla ()
 { // dibujo circulos con ciclo for recreo la sensación optica se asemeja a un bombeo utilizando colores opuesto
     background ( 238,255,8);

  f1 =( float ) width/ cantX;
  f2 = ( float ) width/ cantY ;
float color1 = random (0, 180);
  for ( int a=0 ; a<cantX ; a++ ){
    for ( int b=0 ; b<cantY ; b++ ) {
      noStroke ();
      fill(color1,0,290);
     
      circle( a*f1 , b*f2  , ancho  );
    }    
  }
  ancho+=sentido ;
  if ( ancho>f1  ||  ancho<10  ) {
   sentido = -sentido; 
  }
  ancho = constrain( ancho , 10 , f1 );
  

    
      }
      void Malla2 ()  {
    // Ap partir de aqui creo un sensacion de caledoscopio con colores opuestos y texturas del triagunlo causando una leve abstracion 
      background( 106, 250, 8 );
       
        f1 =( float ) 200;
        f2 = ( float )100 ;
       translate ( 100, 150);
        
        
     for ( int x=7; x < cantX; x++)
      { for (int y=0 ;y< cantY ; y++) {
        if ((x+y)%2==0) {
          fill (255,0,94);}
          else { fill (0,200,20);
        }
        noStroke();
        translate (50, 100 );
        rotate(200.0);
      triangle (   x*tam , y*tam  ,tam , tam ,ancho ,tam);
       
      }
    } ancho+=sentido ;
  if ( ancho>f1  ||  ancho<10  ) {
   sentido = -sentido; 
  }
  ancho = constrain( ancho , 10 , f1 );
  
      }
      
      
 
   void Malla3 ()  {
     //  en diagonal si fijamos la mirada se crea una linea creando una ilusion optica y se presfreca cada vez que viene y va //
     background ( 255, 0 ,0 ,200);{
    
    for ( int x=0; x < cant; x++)
      { for (int y=0 ;y< cant ; y++) {
        if ((x+y)%3==0) {
          fill (255,0,0);}
          else { fill ( 48, 255, 3);
        }
     rect ( x*tam , y*tam  ,ancho , tam );
      }
    } ancho+=sentido ;
  if ( ancho>f1  ||  ancho<10 ) {
   sentido = -sentido; 
  }
  ancho = constrain( ancho , 10 , f1 );
  
}
}
void Malla0 () {


 
 }

  
          
      
