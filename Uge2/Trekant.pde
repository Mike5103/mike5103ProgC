class Trekant {
  // klassens attributter/ tilstand
  float x, y;
  int h, g; // Attributer for trekantens højde og grundlinje
  color farve; // Farve attribut

  //konstroktøren
  Trekant() {
  // Opgave 1. Når en ny firkant bliver lavet i hovedprogrammet, bliver denne funktion kaldt og her genereres nogle værdier
  generate();
  }

  // klassens metoder
  
  // find to tilfældige værdier inden for canvas størrelsen
  void generate() {
    this.x = random(600);
    this.y = random(400);
    this.farve = color(random(255),random(255),random(255)); // Finder farven
  }
  
  // Laver en cirkel i stedet for en firkant, men stadig med de samme attributer
  void drawCirkel() {
    fill(farve);
    circle(x,y, 100);
  }
}
