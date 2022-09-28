class Petalos{
boolean petalos;
  
 Petalos (){
petalos = true;}
void vida (){
  petalos = false;
}
void colorear(){
  if (petalos) {
  float [] x={245,335,167,249,198,298,306,188};
  float [] y={173,246,245,332,188,188,303,303};
  {
  for ( int i=0 ;i<8;i++){ 
    fill(254,255,245,20);
   circle(x[i],y[i],70);}}
  
} 
else {
float [] x={245,335,167,249,198,298,306,188};
  float [] y={173,246,245,332,188,188,303,303};

  {
  for ( int i=0 ;i<8;i++){ 
    fill(218,7,242,90);
   circle(x[i],y[i],70);}}}}}
  
