import 'dart:io';

void primo() {
  print("Digite um número inteiro:");
  int numero = int.parse(stdin.readLineSync()!);

  bool ehPrimo = true;

  if(numero < 2) {
    ehPrimo = false;
  }else {
    for(int i = 2;i <= numero ~/ 2;i++) {
      if(numero % i ==0) {
        ehPrimo = false;
        break;
      }
    }
  }


if (ehPrimo) {
  print("$numero é um primo.");
} else {
  print("$numero não é primo.");
}
}