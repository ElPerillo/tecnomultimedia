void EsquinaInferiorDerecha (float cuadrados) {
  for (int i=0; i<cuadrados; i++){
    
   //float x = map(i, 0, cuadrados+1,800,600);
   //float y = map(i, 0, cuadrados+1, 400, 200);
   float tam = map( i, 0, 16, 200, 40);
   rect(600, 200, tam, tam);
   int col;
if (i % 2 == 0) {

      col = color(0);
    } else {

      col = color(255);
    }
    
    fill(col);
  }
}
    
    
  
 
