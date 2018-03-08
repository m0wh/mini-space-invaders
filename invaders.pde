int res = 7;    //nombre de pixels d'un alien
int size = 56;    //taille d'un alien
float rand = 0;
int scl = size/res;    //taille d'un pixel
int bigres = 10;    //nombre d'aliens par côté
littleHero hero = new littleHero();

void setup() {
  frameRate(1);
  size(800, 800);
}

void draw() {
  // noLoop();
  translate(3*res,3*res);
  colorMode(HSB);
  background(196, 22, 27);
  noStroke();
  for(int x = 0; x < bigres; x++){
    for(int y = 0; y < bigres; y++){
      hero.generate(x,y);
    }
  }
}

class littleHero {
  float couleur;
  void generate(int x, int y){
    couleur = random(255);
    for (int i = 1; i <= ceil(res/2); i++) {
    couleur = random(255);
      for (int j = 1; j <= res; j++) {
    
        rand = random(1);
    
        if (rand >= .5) {
          fill(0, 0, 0, 0);
        } else {
          fill(couleur, 200, 185);
        }
        
        rect((width/bigres)*x+i*scl+(width/(2*bigres))-size, (height/bigres)*y+j*scl+(height/(2*bigres))-size, scl, scl);
        rect((width/bigres)*x+res*scl - i*scl + scl+(width/(2*bigres))-size, (height/bigres)*y+j*scl+(height/(2*bigres))-size, scl, scl);
      }
    }
  }
}
