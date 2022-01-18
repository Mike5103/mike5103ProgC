class Rektangler {
  // klassens attributter/ tilstand
  float x, y;
  float h,w;
  color farve; // Farve attribut

  //konstroktøren
  Rektangler() {
  // Opgave 1. Når en ny firkant bliver lavet i hovedprogrammet, bliver denne funktion kaldt og her genereres nogle værdier
  generate();
  }

  // klassens metoder
  
  // find to tilfældige værdier inden for canvas størrelsen
  void generate() {
    this.x = random(400);
    this.y = random(400);
    this.w = random(200);
    this.h = random(200);
    while(w==h) {
      this.h = random(200);
    }
    this.farve = color(random(256),random(256),random(256)); // Finder farven
  }
  
  // Laver en cirkel i stedet for en firkant, men stadig med de samme attributer
  void drawRektangler() {
    fill(farve);
    rect(x,y, w,h);
  }
}
