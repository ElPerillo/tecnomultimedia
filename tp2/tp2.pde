//Alejandro Perillo
//Comision 4
//tp2
//Hola profe, disculpe que el trabajo este incompleto, pero es que no me alcanzo el tiempo y no pude resolver los problemas que tuve con los float y los map


PImage imagen;

void setup() {
  size(800, 400);
  imagen = loadImage("ilusion.png");
  
  
}
void draw() {
  
  background(0);
  image(imagen, 0, 0, 400, 400);
  noStroke();
frameRate(12);
println(mouseX + " : " + mouseY);
EsquinaInferiorDerecha(17);
}
