// Tesen for den maksimale og minimale værdi for hver primitiv datatype er:
// - Int: En artikel fra Microsoft -  https://docs.microsoft.com/en-us/cpp/cpp/integer-limits?view=msvc-160 har givet max og min værdierne til: Max = 2147483647 og Min = -2147483648
// - Float: Ligesom ved int vil den minimale værdi være den maksimale værdi i minus og minusset 1.
// - Char:
// - Boolean:
// - Byte: Max værdi er 127 og min er -128
// - Short:
// - Long:
// - Double: Ligesom ved int og float vil den miniale værdi være den maksimale værdi i minus og minusset med 1.

// Skriv et program, som kan beregne den maksimale værdi for en datatype. Finder inspiration fra https://github.com/ChrisBruhn/HTX2021/blob/main/uge41/testDatatyper/testDatatyper.pde
// Vi bruger Integer.MIN_VALUE og Integer.MAX_VALUE, som er funktioner indbygget i Java, til at finde min og max værdierne af en int.
println(Integer.MAX_VALUE + " og min er: " + Integer.MIN_VALUE);

// Maksimal værdien for int blev fundet til 2147483647 og den minimale værdi blev -2147483648

// Vi bruger Float.MIN_VALUE og Float.MAX_VALUE, som er funktioner indbygget i Java, til at finde min og max værdierne af en int.
println(Float.MAX_VALUE + " og min er: " + Float.MIN_VALUE);

// Maksimal værdien er 3.4028235E38 og den minimale værdi er 1.4E-45

// Beregning af char's maxværdi, ved at bruge Character.MAX_VALUE og Character.MIN_VALUE.
int maxChar = Character.MAX_VALUE;
int minChar = Character.MIN_VALUE;
println(maxChar + " og min er: " + minChar);
// Maksimal værdien er 65535 og min er: 0

// Vi bruger Float.MIN_VALUE og Float.MAX_VALUE, som er funktioner indbygget i Java, til at finde min og max værdierne af en int.
println(Double.MAX_VALUE + " og min er: " + Double.MIN_VALUE);


// Maksimal værdien er 1.7976931348623157E308 og min er: 4.9E-324
