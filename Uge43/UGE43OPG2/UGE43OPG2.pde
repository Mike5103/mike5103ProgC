void setup() {
  size(200, 300);

  // Vi starter med for løkken:
  println("For loop");
  for (int i=0; i<=30; i++) {
    if (i>=10 && i<=20) {
      println(i);
    }
  }

  // Nu bruger vi while løkken
  println("While loop");
  int i=0;
  while (i<=30) {
    if (i>=10&&i<=20) {
      println(i);
    }
    i++;
  }
}

void draw() {
}
