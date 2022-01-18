/* 
Opgaver

- Opgave 1
Ændre klassen Firkant således, at firkantens tilfældig x og y position generes i konstruktøren og ikke skal kaldes fra hovedprogrammet. 

Generate metoden er rykket over til Firkant klassen.

- Opgave 2
Tilføj en attribut farve, til klassen. Farven skal være tilfældig. Brug RGB farver. Hvis du ikke kan huske hvad komandoen hedder, kan slå det op i dokumentationen.

En attribut med navnet farve er blevet tilføjet i Firkant klassen, samt en initiering af farven med forskellige RGB farver 
og i drawFirkant funktionen er der blevet tilføjet en fill instruktion, som sætter farven af firkanten.

- Opgave 3
Tilføj en metode som kan tegne en cirkel i stedet for en firkant.

Funktionen drawCirkel i Firkant klassen, laver en cirkel i stedet for en firkant

- Opgave 4
Ændre hovedprogrammet klasse.pde så den skiftevis tegner en firkant og en cirkel.

En variabel som hedder tegnFirkant bruges til at regulere hvilken figur den skal tegne

- Opgave 5
Det er jo lidt dumt at have en klasse som hedder firkant, hvis den tegner en cirkel. Så lave en ny klasse så du deler firkant og cirkel hver for sig. Tilpas klasse.pde til dine nye klasser.

Lavet en ny klasse som hedder Cirkel med præcis de samme konstruktioner udover at drawFirkant er slettet, og lavet et cirkel 
objekt i hovedprogrammet

- Opgave 6
Udvid med en trekant og en rektangel.

- Opgave 7
- Opgave 8

*/

// initiering af variablen f
Firkant f;
Cirkel c;
boolean tegnFirkant = true; // For at regulere, hvilken der skal tegnes, hvis true bliver der tegnet en firkant, hvis false bliver der tegnet en cirkel

void setup() {
  size (600, 400);
}

void draw() {
  // initiering af objektet f
  f = new Firkant();
  c = new Cirkel();
  // kald metoden generate som laver en tilfældig x og y pos
  // f.generate(); -- Denne instruktion er slettet da den er rykket over til Firkant konstruktøren
  
  // tegner firkanten på canvas
  if(tegnFirkant){ // Tjekker hvilken der skal tegnes
  f.drawFirkant();
  tegnFirkant = false; // Sætter den til at tegne cirkel
  }
  else{
  c.drawCirkel();
  tegnFirkant = true; // Sætter den til at tegne firkant
  }
}
