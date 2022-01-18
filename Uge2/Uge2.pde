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

En variabel som hedder tegn bruges til at regulere hvilken figur den skal tegne, hvis 0 så er det en firkant, hvis 1 så en cirkel.

- Opgave 5
Det er jo lidt dumt at have en klasse som hedder firkant, hvis den tegner en cirkel. Så lave en ny klasse så du deler firkant og cirkel hver for sig. Tilpas klasse.pde til dine nye klasser.

Lavet en ny klasse som hedder Cirkel med præcis de samme konstruktioner udover at drawFirkant er slettet, og lavet et cirkel 
objekt i hovedprogrammet

- Opgave 6
Udvid med en trekant og en rektangel.

Den laver trekanter med forskellige størrelser
Den laver rektangler med forskellige størrelser


- Opgave 7
Lav så figuerne bliver af variabel størrelse.

Da trekanter og rektangler allerede var lavet med forskellige størrelser, er det kun firkanter og cirkel klasserne der har fået en s attribute som er størrelsen af figuren.

*/

// initiering af variablen f
Firkant f;
Cirkel c;
Trekant t;
Rektangler r;
int tegn = 0; // For at regulere, hvilken der skal tegnes, hvis den er 1, bliver det en firkant, hvis det er 2, bliver det en cirkel, hvis det er 3, bliver det en trekant

void setup() {
  size (600, 400);
}

void draw() {
  // initiering af objektet f
  f = new Firkant();
  c = new Cirkel();
  t = new Trekant();
  r = new Rektangler();
  // kald metoden generate som laver en tilfældig x og y pos
  // f.generate(); -- Denne instruktion er slettet da den er rykket over til Firkant konstruktøren
  
  // tegner firkanten på canvas
  if(tegn == 0){ // Tjekker hvilken der skal tegnes
  f.drawFirkant();
  tegn = 1; // Sætter den til at tegne cirkel
  }
  else if(tegn == 1){
  c.drawCirkel();
  tegn = 2; // Sætter den til at tegne firkant
  }
  else if(tegn == 2) {
    t.drawTrekant();
    tegn = 3;
  }
  else if(tegn == 3) {
    r.drawRektangler();
    tegn = 0;
  }
}
