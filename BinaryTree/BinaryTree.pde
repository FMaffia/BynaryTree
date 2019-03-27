Nodo root;      
int spostamentoVerticale = 100;
int diametro = 50;

void setup(){
size(1000,800);
background(0);
generaValori(12);
}
          
public void generaValori(int numeroValori){
  for (int i=0; i < numeroValori; i++){
         inserisciNodo((int)random(5,60));
    }
} 
   public void inserisciNodo(int valore) {
    if (root == null) {
      root = new Nodo(valore);
      root.setPosX(width/2);
      root.setPosY(100);
      disegnaNodo(root);
    } else {
      insert(valore, root,2);
    }
 }
 public void insert(int valore, Nodo nodoCorrente, int i){
  Nodo figlio = new Nodo(valore);
  if(figlio.valore < nodoCorrente.valore){
    if(nodoCorrente.getFiglioSinistro() == null){
       nodoCorrente.setFiglioSinistro(figlio);
       figlio.setPosX(nodoCorrente.posX-(width/2)/i);
       figlio.setPosY(nodoCorrente.posY+spostamentoVerticale);
       disegnaNodo(figlio);
       disegnaLinea(nodoCorrente, figlio);
   } else {
       i = i + 2;
       insert(valore,nodoCorrente.getFiglioSinistro(),i*2);
       }
   }    
    else if(figlio.valore > nodoCorrente.valore){
      if(nodoCorrente.getFiglioDestro() == null){
         nodoCorrente.setFiglioDestro(figlio);
         figlio.setPosX(nodoCorrente.posX+(width/2)/i);
         figlio.setPosY(nodoCorrente.posY+spostamentoVerticale);
         disegnaNodo(figlio);
         disegnaLinea(nodoCorrente, figlio);
      } else {
        insert(valore,nodoCorrente.getFiglioDestro(),i*2);
       }
     }
 }
 
  public void disegnaNodo(Nodo nodo){
    noFill();
    stroke(255);
    ellipse(nodo.posX,nodo.posY,diametro,diametro);
    fill(0);
    ellipse(nodo.posX,nodo.posY,diametro-10,diametro-10);
    fill(255);
    textAlign(CENTER);
    textSize(15);
    text(nodo.valore,nodo.posX,nodo.posY-40);
    ellipse(nodo.posX,nodo.posY,10,10);
  }
public void disegnaLinea(Nodo nodoCorrente, Nodo figlio){
   line(nodoCorrente.posX, nodoCorrente.posY, figlio.posX, figlio.posY);
}
