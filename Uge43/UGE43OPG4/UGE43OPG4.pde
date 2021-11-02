void setup() {
  size(200, 300);

  // Deklaration og initiering af sætningen fra opgaven
  String Saetning = "Løkken skal udskrive alle e'er og tilsidst udskrive hvor mange e'er som er fundet. Ja, så er det rigtigt :)";// Der er 107 tegn

  // Deklaration og initiering af en array som indeholder alle positionerne, som vi skal finde
  int[] positions = {39, 19, 41, 6, 4, 16, 6, 4, 16, 35, 95, 41, 48, 95};

  forLoekken(Saetning, positions);
}
void draw() {
}

void forLoekken(String Saetning, int[] positions) {
  for (int pos : positions) {
    println(Saetning.charAt(pos));
  }
}
