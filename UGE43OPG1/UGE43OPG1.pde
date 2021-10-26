// Strengen som vi skal bruge
String S="Hej med dig";

void setup() {
  size(200, 300);
  
  // For løkke som går igennem alle tegnene i strengen
  for (int i=0; i<S.length(); i++) {
    
    // Hvis i er mindre eller lig med 5 printer vi karakteren.
    if (i<=5) {
      println(S.charAt(i));
    }
  }
}
void draw() {
  
}
