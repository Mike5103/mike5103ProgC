// a) Funktionen frameFunction dekleres på linje 42. I filen: https://github.com/ChrisBruhn/HTX2021/blob/main/uge37/fourTimesAAlien/fourTimesAAlien.pde
// b) frameFunction bliver kaldt på linje: 9,10, 12 og 13. I filen: https://github.com/ChrisBruhn/HTX2021/blob/main/uge37/fourTimesAAlien/fourTimesAAlien.pde
// c) Funktionen bliver kaldt med 2 parametre: int x og int y.
// d) Opret dine egne funktioner som laver:

void setup() {
  size (600, 600);
  noLoop();
}

void draw() {

  // make frame behind alien
  frameFunction(0, 0);
  frameFunction(300, 0);

  frameFunction(0, 300);
  frameFunction(300, 300);

  //divide screen in four squares
  line(300, 0, 300, 600);//vertical line
  line (0, 300, 600, 300); //Horizontal line

  // Create first alien
  headAndEyes(150, 75, 100, 125,75,175,75,25,50);
  bodyAndLegs(125,120,50,100,125,175, 220, 110, 195, 250);
  alienName("Alie",120,270);
  
  // Create second alien
  headAndEyes(450, 75, 100, 425,75,475,75,25,50);
  bodyAndLegs(425,120,50,100,425,475, 220, 410, 495, 250);
  alienName("Alien",420,270);
  
  // Create third alien
  headAndEyes(150, 375, 100, 125,375,175,375,25,50);
  bodyAndLegs(125,420,50,100,125,175, 520, 110, 195, 550);
  alienName("Alienn",120,570);
  
  // Create third alien
  headAndEyes(450, 375, 100, 425,375,475,375,25,50);
  bodyAndLegs(425,420,50,100,425,475, 520, 410, 495, 550);
  alienName("Aliennn",420,570);

}

void headAndEyes(float headX, float headY, float headSize, float firstEyeX, float firstEyeY, float secondEyeX, float secondEyeY, float eyeWidth, float eyeHeight) {
  // make head and color white
  fill(255, 255, 255);
  circle(headX, headY, headSize);
  
  // make eyes and color black
  fill(0, 0, 0);
  ellipse(firstEyeX, firstEyeY, eyeWidth, eyeHeight);
  ellipse(secondEyeX, secondEyeY, eyeWidth, eyeHeight);
}

void bodyAndLegs(float bodyX, float bodyY, float bodyWidth, float bodyHeight, float firstLegX, float secondLegX, float legY, float firstLegEndX, float secondLegEndX, float legEndY) {
  // make body and color black
  fill(0, 0, 0);
  rect(bodyX, bodyY, bodyWidth, bodyHeight);
  
  //make legs and thick
  strokeWeight(5);
  line(firstLegX, legY, firstLegEndX, legEndY);
  line(secondLegX, legY, secondLegEndX, legEndY);
  
}

void alienName(String name, float xPos, float yPos) {
  textSize(32);
  text(name,xPos,yPos);
}

void frameFunction(int x, int y ) {
  rect(10+x, 10+y, 280, 280);
}
