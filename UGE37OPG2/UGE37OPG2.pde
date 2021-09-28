// Opgave 2, Uge 37.
// a) Alle linjer i programmet fra https://github.com/ChrisBruhn/HTX2021/blob/main/uge37/kasseapperat/kasseapperat.pde, er forklaret.
// b) Der er blevet lavet en ny funktion som trækker momsen fra, funktionen hedder beregnMoms, og tager parameterene belob, som er beløbet med moms.

// En int variabel, som indeholder beløbet uden moms. I dette tilfælde er det 100.
int belobUdenMoms = 100;

// En float variabel som indeholder det beregnede beløb med moms. Dens startværdi er 0, da den først bliver beregnede senere i programmet.
float belobMedMoms = 0;

// En string, som indeholder et navn. I dette tilfælde er det Jens.
String navn = "Jens";

// Deklere setup funktionen
void setup(){
  // Sørger for at funktionen draw ikke bliver ved med at gentage sig
  noLoop();
}

// Deklere draw funktionen
void draw(){
  // Laver en variabel, med navnet belobMedMoms som har værdien fra funktionen beregnMoms.
  float belobMedMoms = beregnMoms(belobUdenMoms);
  float moms = beregnMoms(belobMedMoms);
  // Printer beløbet med moms i consolen
  println ("Total inkl. moms: " + belobMedMoms);
  println ("Uden moms: "+belobUdenMoms);
  // Printer datoen i consolen.
  print (day(),"/",month(),year(), hour(),":",minute());
  
  printBon(navn,belobMedMoms,belobUdenMoms,moms);
  
}

// Deklere en float funktion med parameterene: int belob, som er beløbet uden moms
float beregnMoms(int belob){
  // Returnere det beregnede beløb med moms.
  return belob*1.25;
}

float beregnMoms(float belob){
  return belob - belob * 0.8;
}

void printBon(String navn, float belobMedMoms, int belobUdenMoms, float moms) {
  println("\nTak for dit køb " + navn + ". Du har købt for " + belobMedMoms + " kroner.\nBeløb uden moms: " + belobUdenMoms + "\nBeløb med moms: " + belobMedMoms + "\nMomsbeløbet udgør: " + moms);
}
