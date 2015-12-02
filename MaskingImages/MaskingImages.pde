PImage grayguy;
PImage guy;

void setup(){
  guy = loadImage("guy.jpg");
  grayguy = loadImage("guy-fieri-gray-.jpg");
  size(480,540);
  guy.mask(grayguy);
}

void draw(){
  image(guy,0,0);
}