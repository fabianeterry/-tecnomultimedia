   //https://www.youtube.com/watch?v=xI8llMtZomM
  //DECLARO EN ESPACIO DE MEMORIA PARA UN OBJETO de la clases tierra , lluvia
Tierra miTierra ;
Flor miFlor;
Sol miSol;
Fondo miFondo;
Petalos miPetalos;

void setup(){// SE CONSTRUYE EL OBJETO
size ( 500, 500);

miTierra = new Tierra ();
miFlor = new Flor ();
miSol = new Sol();
miFondo= new Fondo ();
miPetalos=new Petalos();

}

// ejecutamos todos los metodos 
void draw(){
miFondo.clima();
miTierra.actualizar ();  
miFlor.mover ();
miSol.radial();
miPetalos.colorear();


println (mouseX,mouseY);
}
void mousePressed (){
   miFondo.mejora();
  miTierra.fertilizar();
  miSol.luna();
  miPetalos.vida();

}

  
