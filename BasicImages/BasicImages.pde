PImage guy;
float sf = .3;
//declare variables

void setup(){
  guy = loadImage("guy-fieri-.jpg");
  //load image
  size(800,600);
  imageMode(CENTER);
  noCursor();
  //don show the cursor
}

void draw(){
 background(0);
 image(guy, mouseX, mouseY, guy.width*sf, guy.height*sf);
 //display the image
}