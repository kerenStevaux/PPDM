import 'dart:io'; //biblioteca de entrada e saida de dados

void parImpar() {
  print ("digite um numero inteiro:");
  int numero = int.parse(stdin.readLineSync()!); // parse força que a informação seja da variavel desejada nesse caso inteiro

  if (numero %2 == 0) {
    print("o numero $numero é par");
  } else {
    print("o numero $numero é impar");
  }
}