void main() {
  int nota = 50; 
  String conceito;

  if (nota < 0 || nota > 100) {
    print("A nota informada deve ser entre 0 e 100!");
    conceito= "Desconhecido.";
  } else if (nota > 90){
    conceito = "A";
  } else if (nota >= 80) {
    conceito = "B";
  } else if (nota >= 70) {
    conceito = "C";
  } else if (nota >= 60) {
    conceito = "D";
  } else {
    conceito = "F";
  }
  print("Conceito: $conceito");
}