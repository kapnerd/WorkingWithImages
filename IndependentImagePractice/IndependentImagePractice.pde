PImage guy1, guy2, guy3; //declare image variables
PVector r1, r2, v1, v2; //declare vector variables
int p,q; //declare integer p and q

void setup() {
  size(522, 392); //set the size
  guy1 = loadImage("guy1.png");
  guy2 = loadImage("guy2.png");
  guy3 = loadImage("guy3.jpg"); //load images
  r1 = new PVector(width/2, height/2);
  r2 = new PVector(width/2, height/2); //put locations at center
  v1 = PVector.random2D();
  v2 = PVector.random2D(); //make the velocities random
  p = 10;
  q = -1; //assign values to variables
}

void draw() {
  image(guy3, 0, 0);
  image(guy1, r1.x, r1.y);
  image(guy2, r2.x, r2.y); //display the images
  r1.add(v1);
  r2.add(v2); //gives the pictures velocity
  if (r1.x + guy1.width>width || r1.x <0) {
    v1.x = v1.x * -1;
    guy1.filter(INVERT);
    p = p + q;
  }
  if (r1.y + guy1.height>height || r1.y <0) {
    v1.y = v1.y * -1;
    guy1.filter(INVERT);
    p = p + q;
  }//if guy1 goes off the screen, turn it around, invert its colors, and subtract 1 from p
  if (r2.x + guy2.width>width || r2.x <0) {
    v2.x = v2.x * -1;
    guy2.filter(INVERT);
    p = p + q;
  }
  if (r2.y + guy2.height>height || r2.y <0) {
    v2.y = v2.y * -1;
    guy2.filter(INVERT);
    p = p + q;
  }//if guy2 goes off the screen, turn it around, invert its colors, and subtract 1 from p
  guy3.filter(POSTERIZE, p);//display guy3 using p colors
  if(p == 2){
    q = 0;
  } //if p is 2, set q to 0
}