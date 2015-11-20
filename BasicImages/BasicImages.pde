PImage guy;
float sf = .3;
PVector r, v;
//declare variables

void setup() {
  guy = loadImage("guy-fieri-.jpg");
  //load image
  size(800, 600);
  noCursor();
  //dont show the cursor
  r = new PVector(0, 0);
  v = new PVector(random(2,4),random(1,3));
}

void draw() {
  background(0);
  image(guy, r.x, r.y, guy.width*sf, guy.height*sf);
  //display the image
  r.add(v);
  if (r.x < 0 ) {
    v.x = v.x * -1;
  } else if (r.x+guy.width*sf > width) {
    v.x = v.x * -1;
  }
    if (r.y < 0 ) {
    v.y = v.y * -1;
  } else if (r.y+guy.height*sf > height) {
    v.y = v.y * -1;
  }
}