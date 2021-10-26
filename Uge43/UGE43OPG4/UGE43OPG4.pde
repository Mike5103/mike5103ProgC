void setup() {
  size(200, 300);

  // Deklaration og initiering af sætningen fra opgaven
  String Sætning = "Løkken skal udskrive alle e'er og tilsidst udskrive hvor mange e'er som er fundet. Ja, så er det rigtigt :)";// Der er 107 tegn

  // Deklaration og initiering af en array som indeholder alle positionerne, som vi skal finde
  int[] positions = {39, 19, 41, 6, 4, 16, 6, 4, 16, 35, 95, 41, 48, 95};

  forLøkken(Sætning, positions);
}
void draw() {
}

void forLøkken(String Sætning, int[] positions) {
  for (int pos : positions) {
    println(Sætning.charAt(pos));
  }
}
