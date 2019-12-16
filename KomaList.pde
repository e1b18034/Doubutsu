class KomaList {
  AbstractKoma[] komaArray = new AbstractKoma[10];

  KomaList() {
    komaArray[0] = new Hiyoko("hiyoko", 2, 1, 0, true);
    komaArray[1] = new Hiyoko("hiyoko", 3, 1, 1, true);
    komaArray[2] = new Zou("zou", 1, 0, 0, true);
    komaArray[3] = new Zou("zou", 4, 2, 1, true);
    komaArray[4] = new Kirin("kirin", 1, 2, 0, true);
    komaArray[5] = new Kirin("kirin", 4, 0, 1, true);
    komaArray[6] = new Lion("lion", 1, 1, 0, true);
    komaArray[7] = new Lion("lion", 4, 1, 1, true);
    komaArray[8] = new Niwatori("niwatori", 0, 0, 0, false);
    komaArray[9] = new Niwatori("niwatori", 5, 0, 1, false);
  }
  
  void draw() {
    String komaImage = "";
    if (this.team==0 && this.kStat.active) komaImage = this.name+"A.png";
    else if (this.team==1 && this.kStat.active) komaImage = this.name+"B.png";
    else return;

    PImage img = loadImage(komaImage);
    image(img, SQUARESIZE*this.x+2, this.y*SQUARESIZE+2, SQUARESIZE-4, SQUARESIZE-4);

    if (this.kStat.selected) this.drawSelected();
  }

  void drawSelected() {
    fill(#FF0000, SQUARESIZE);
    rect(this.x*SQUARESIZE, this.y*SQUARESIZE, SQUARESIZE, SQUARESIZE);
  }

}
