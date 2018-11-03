PImage imgOriginal; //<>//
PImage imgDestino;
color corOriginal, corDestino;
int aux = 0;
float r,g,b,media;

void setup() {
  size(960, 270);
  imgOriginal = loadImage("original.jpg");
  imgDestino = loadImage("original.jpg");
}


void draw() {

  image(imgOriginal, 0, 0, 480, 270);
  image(imgDestino, 480, 0, 480, 270);
  processaImagem();
}


void processaImagem() {
  keyReleased();
}


void keyPressed() {
  if (key == '1') {
    imgDestino = loadImage("original.jpg");
  }
  if (key == '2') {
      fRuido();
  }
  if (key == '3') {
    imgDestino.filter(GRAY);
  }
  if (key == '4') {
    fRuidoVermelho();
  }
  if (key == '5') {
    fRuidoAmarelo();
  }
}

void fRuido() {
  int qtd, x, y;
  qtd = 1000;
  for (int i = 0; i < qtd; i++) {
    x = int(random(1920));
    y = int(random(1080));
    corDestino = color(int(random(256)), int(random(256)), int(random(256)));
    imgDestino.set(x, y, corDestino);
  }
}

void fVermelho(){
  for (int x = 0; x < 1920; x++) {
    for (int y = 0; y < 1080; y++) {
      corOriginal = imgOriginal.get(x, y);
      r = red(corOriginal);
      g = green(corOriginal);
      b = blue(corOriginal);
      
      
      corDestino = color(r, 0, 0);
      imgDestino.set(x, y, corDestino);
    }
  }
}

void fRuidoVermelho() {
  int qtd, x, y;
  qtd = 1000;
  for (int i = 0; i < qtd; i++) {
    x = int(random(1920));
    y = int(random(1080));
    corDestino = color(255, 0, 0);
    imgDestino.set(x, y, corDestino);
  }
}

void fRuidoAmarelo() {
  int qtd, x, y;
  qtd = 1000;
  for (int i = 0; i < qtd; i++) {
    x = int(random(1920));
    y = int(random(1080));
    corDestino = color(255, 255, 0);
    imgDestino.set(x, y, corDestino);
  }
}
