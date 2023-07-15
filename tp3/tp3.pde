int [] pantallas = new int [12]; 
int numero0, numero1, numero2, numero3, numero4, numero5,
PImage foto1, foto2, foto3, foto4, foto5,
int numero;
int numeroactual;
void setup() {

  numero0=0;
  numero1=1;
  numero2=2;
  numero3=3;
  numero4=4;
  numero5=5;
  size(600, 600);

  for (int i=0; i<12; i++) {
    pantallas[i] =0;
  }
}


void draw() {
  println(pantallas);
  numeroactual=minumero;
  println(numeroactual);

  if (pantallas[0]==0) {
   
    planillabase("pantalla1", foto1);
  } else if (pantallas[1]==0) {
    planillabase("pantalla2", foto2);
  } else if (pantallas[2]==0) {
    planillabase("pantalla3", foto3);
  } else if (pantallas[3]==0) {
    planillabase("pantalla4", foto4);
  } else if (pantallas[4]==0) {
    planillabase("pantalla5", foto5);
  } else if (pantallas[5]==0) {
  }


void mousePressed() {
  if (pantallas[0] == 0 && boton(250, 300, 250, 300, numero1)) {

  } else if (pantallas[1] == 0 && boton(250, 300, 250, 300, numero2)) {

  } else if (pantallas[2] == 0 && boton(250, 300, 250, 300, numero3)) {

  } else if (pantallas[3] == 0 && boton(250, 300, 250, 300, numero4)) {

  } else if (pantallas[4] == 0 && boton(250, 300, 250, 300, numero5)) {

  }
}


void planillabase(String textito, PImage foto) {
  String eltexto=textito;
  PImage mifoto= foto;
  image(mifoto, 0, 0);
  textSize(30);
  text(eltexto, 220, 350);
  fill(255);

  rect(250, 250, 50, 50);
 
}


boolean boton(int posicionx1, int posicionx2, int posiciony1, int posiciony2, int elnumero) {
  int miposicionx1= posicionx1;
  int miposicionx2= posicionx2;

  int  miposiciony1= posiciony1;
  int miposiciony2= posiciony2;

  minumero=elnumero;

  for (int i=0; i<12; i++) {
    pantallas[i]=1;
    pantallas[minumero]=0;
  }

  return (mouseX>miposicionx1 && mouseX<miposicionx2 && mouseY >miposiciony1 && mouseY<miposiciony2);
  
 
}
