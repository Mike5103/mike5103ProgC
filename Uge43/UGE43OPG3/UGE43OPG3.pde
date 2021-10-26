
void setup() {
  size(200, 300);
  // Deklaration og initiering af sætningen til denne opgave:
  String Sætning = "Dette er en sætning som indeholder mange e'er. Men hvor mange er der?";

  // Vi starter med at løse opgaven med en for løkke
  forLøkken(Sætning);
  whileLøkken(Sætning);
}
void draw() {
}

void forLøkken(String Sætning) {
  println("For loop");
  // Deklaration og initiering af en int variabel, som beskriver antallet af e'er
  int e = 0;
  for (int i=0; i<Sætning.length(); i++) {
    if (Sætning.charAt(i)==101) {
      println(Sætning.charAt(i) + " var ved: " +(i+1));
      e++;
    }
  }
  println("I alt er der: " + e + " e'er");
}

void whileLøkken(String Sætning) {
  println("While loop");
  // Deklaration og initiering af en int variabel, som beskriver antallet af e'er
  int e = 0;
  
  // Deklaration og initiering af i
  int i = 0;
  while (i<Sætning.length()) {
    if (Sætning.charAt(i)==101) {
      println(Sætning.charAt(i) + " var ved: " +(i+1));
      e++;
    }
    i++;
  }
  println("I alt er der: " + e + " e'er");
}
