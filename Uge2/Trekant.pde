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
    this.x = random(400);
    this.y = random(400);
    this.h = (int)random(400);
    this.g = (int)random(200);
    this.farve = color(random(256),random(256),random(256)); // Finder farven
  }
  
  // Laver en trekant
  void drawTrekant() {
    fill(farve);
    triangle(x,y, x + g / 2, y-h,x + g, y); 
    
  }
}
