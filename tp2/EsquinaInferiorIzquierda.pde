void EsquinaInferiorIzquierda (float cuadrados) {
  for (int i=0; i<cuadrados; i++){
    
   float tam = map( i, 0, 16, 40, 200);
   rect(600, 200, tam, tam);
   int col;
if (i % 2 == 0) {
      col = color(255);
    } else {
      col = color(0);
    }
    
    fill(col);
  }
}
