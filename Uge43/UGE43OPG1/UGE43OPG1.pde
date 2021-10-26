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

  // Nu gør vi det samme med en while løkke
  println("While loop:");
  int i = 0;
  while (i<=S.length()) {
    if (i<=5) {
      println(S.charAt(i));
    }
    i++;
  }
}
void draw() {
}
