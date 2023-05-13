PImage pantalla1;

PImage pantalla2;

PImage pantalla3;

PImage reinicio;

PFont Fuente;

float y = 50;

float x = 50;

float movimiento = 1;

int pantalla = 1;

int tiempo = 7;

int tiemporeinicio = second();

void setup() {
  size(640, 480);

  pantalla1 = loadImage("Imagen 1.jpg");
  pantalla2 = loadImage("Imagen 2.jpg");
  pantalla3 = loadImage("Imagen 3.jpg");
  reinicio = loadImage("Reset.jpg");
  
  Fuente = loadFont("Fuente.vlw");
  textFont(Fuente);
  
  tiempo = second();
}

//pantalla 1
void draw() {
  if (pantalla == 1) {
    image(pantalla1, 0, 0, 640, 480);
    fill (0);
    text("El Caza f22 raptor es un avion de caza monoplaza.\n\nfue diseñado como caza de superioridad aerea.",x-20, y, 200, 250);
    x = x + movimiento;
    y = y + movimiento;
  } 
  //pantalla 2
  else if (pantalla == 2) {
    image(pantalla2, 0, 0, 640, 480);
    fill (0);
    text("Se empezo a producir desde 1980 y puede alcanzar una velocidad de 2120 km/h.", x+30, y-100, 300, 300);
    y = y - movimiento;
    x = x - movimiento;
  } 
  //pantalla 3
  else if (pantalla == 3) {
    image(pantalla3, 0, 0, 640, 480);
    fill (0);
    text("Es actualmente uno de los mejores cazas del mundo, solo siendo superado por el F-35 Lightning II, y actualmente solo existen 186 unidades, todas ellas en estados unidos ", y-50, x-40, 500, 250);
     x = x + movimiento;
     y = y + movimiento;
     if (x > 150) {
       movimiento = 0;
     }
  }
//boton de reinicio
  if (second() - tiemporeinicio > 10 && pantalla == 3) {
    image(reinicio, 270, 350, 100, 50);
  }

  if (second() - tiempo > 3) {
    pantalla++;
    tiempo = second();
  }
  
  if (pantalla > 3) {
    pantalla = 3;
  }
}

void mouseClicked() {
  if (pantalla == 3 && mouseX > 270 && mouseX < 370 && mouseY > 350 && mouseY < 400) {
    pantalla = 1;
  tiempo = second();
  x = 50;
  y = 50;
  movimiento = 1;
  }
}
