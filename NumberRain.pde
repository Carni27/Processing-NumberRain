class NumberRain { //<>//

  int x;
  int y;
  int dist;
  ArrayList<Integer> valore;
  ArrayList<Integer> tFont;
  
  NumberRain() {
    this((int)random(0, width), 0);
  }

  NumberRain(int x, int y) {
    this.x = x;
    this.y = y;
    this.dist = 20;
    this.valore = new ArrayList();
    this.tFont = new ArrayList();
  }

  void update() {

    this.tFont.add((int)random(16, 26));
    this.valore.add((int)random(9));


    for (int i =  this.valore.size() - 1; i >= 0; i--) {
      
      int v;
      v = (int)random(0, 10)==0 ? (int)random(9) : this.valore.get(i);
      //v = valore.get(i);
      
      
      fill(color(10 + ((this.valore.size() - i) * 3 )
                ,80 + ((this.valore.size() - i) * 3 )
                ,30 + ((this.valore.size() - i) * 3 )));
      textFont(f, this.tFont.get(i));
      
      text(str(v), x, y + (this.dist * (this.valore.size() - i)));
      
      if ( y + (this.dist * (this.valore.size() - i)) > height) {
        this.tFont.remove(i);
        this.valore.remove(i);
      }
    }
  }
}