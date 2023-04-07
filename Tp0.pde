void setup(){
  size(800,400);
  background(100);
  PImage img;
  img= loadImage("Tanque.png");
  img.resize(430,230);
  image(img,20,230);
}

void draw(){
  //Base
  fill(126,136,125);
  rect(200,150,400,80);
  //Cabina
  rect(250,90,300,60);
  //Cañon
  rect(550,100,200,20);
  //Ruedas
  noFill();
  fill(141,142,128);
  ellipse(220,256,50,50);
  ellipse(280,256,50,50);
  ellipse(340,256,50,50);
  ellipse(400,256,50,50);
  ellipse(460,256,50,50);
  ellipse(520,256,50,50);
  ellipse(580,256,50,50);
  
 
}
