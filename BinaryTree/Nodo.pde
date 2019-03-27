    class Nodo {
      int valore;
      Nodo figlioSinistro;
      Nodo figlioDestro;
      int posX;
      int posY; 
      
    Nodo(int valore){
      this.valore = valore;
    }
    Nodo getFiglioDestro() {
      return figlioDestro;
    } 
    void setFiglioDestro(Nodo figlioDestro) {
        this.figlioDestro = figlioDestro;
    }
    Nodo getFiglioSinistro() {
        return figlioSinistro;
    }
    void setFiglioSinistro(Nodo figlioSinistro) {
        this.figlioSinistro = figlioSinistro;
      }
       void setPosX(int valore){
        this.posX = valore;
      }
      
      public int getPosX(){
      return this.posX;
      }
      public void setPosY(int valore){
      this.posY = valore;
      }
      
      public int getPosY(){
      return this.posY;
      } 
      
    }
