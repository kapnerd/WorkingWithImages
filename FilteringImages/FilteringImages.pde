PImage guy;

void setup(){
  guy = loadImage("guy-fieri-.jpg");
  size(480, 540);
}

void draw(){
  background(255);
  image(guy, 0,0);
  filter(INVERT);
  filter(POSTERIZE,5);
}