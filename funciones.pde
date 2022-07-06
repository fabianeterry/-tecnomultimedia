void action1 (){ 
  // esta función es  para simular las burbujas que van a ser distintas y creen el desafio para jugarla 
  //en el trasncurso del juego se va  acelerando el tiempo lo cual se vuelve más dificultoso 
  // lo cual hace que el jugador se confunda y pierda . pero finalmente en realidad siempre 
  // son la misma cantidades que pasan en el juego que son una burbuja de color distinta 2 y tres pero con el desafio del 
  //correo de los fotogramas hace que el jugador se confunda y pierda. 
 
  fill(106,160,180,170);
   ellipse( 100,posY,100,100);
   posY= posY+frameCount/100;
  
   if (key=='1'){
        juego(); fill(250,160,180,170);
   ellipse( 200,posY,100,100);
   ellipse( 300,posY,100,100);
   

   
         
          }
           if (key=='2')
           
     {
     
    fill(250,160,180,170);
   ellipse( 200,posY,100,100); 
   ellipse( 100,posY,100,100);
    ellipse( 400,posY,100,100); }
  
  
   
     {
       if (key=='3'){Pantalla=3;
     
         background(20);
         fill(100,255,110);
         stroke(200);
         textSize(20);
         text( "GANASTE \n dale click a tu personaje \n para reiniciar " ,200,200);
          image(ganaste, 250,300, 200, 200);
       }}}
 
         
 
  
         
   
void juego (){
  // creamos una funcion con ciclo for de  arreglos y arreglos bidimensionales para  para crear cantidades de colores simulando las burbujas de fondo en el oceano.

 background (130,160,200);
   for ( int i=0;i<cant ; i++){
     noStroke();
     fill ( c [i][2], y[3], 200, 300);
   ellipse (x[i],y[i],100, 100 );{
 
 
     for ( int a=1;a<cant; a++){
    x[i] = random (width);
    y[i]= random (height); 
  
c[i][0] =random(190,0);
c[i][1]=random(255,20);
c[i][2] =random(100,255);



}}}}
// esta función es para hacer un atajo de reiniciar el juego
void reiniciar (){
 Pantalla=0;}
