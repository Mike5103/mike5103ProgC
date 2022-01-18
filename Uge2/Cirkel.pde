class Cirkel {
  // klassens attributter/ tilstand
  float x, y;
  float s;
  color farve; // Farve attribut
  

  //konstroktøren
  Cirkel() {
  // Opgave 1. Når en ny firkant bliver lavet i hovedprogrammet, bliver denne funktion kaldt og her genereres nogle værdier
  generate();
  }

  // klassens metoder
  
  // find to tilfældige værdier inden for canvas størrelsen
  void generate() {
    this.x = random(600);
    this.y = random(400);
    this.s = random(100);
    this.farve = color(random(256),random(256),random(256)); // Finder farven
  }
  
  // Laver en cirkel i stedet for en firkant, men stadig med de samme attributer
  void drawCirkel() {
    fill(farve);
    circle(x,y,s);
  }
}
