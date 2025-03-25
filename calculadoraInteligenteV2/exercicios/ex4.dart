import 'dart:io';

void compararNumeros () {
  print("digite um numero inteiro");
  int num1 = int.parse(stdin.readLineSync()!);

  print("digite outro valor inteiro");
  int num2 = int.parse(stdin.readLineSync()!);

  if (num1 > num2) {
    print("o $num1 e o maior valor");
  } else if (num2 > num1) {
    print("o $num2 é o maior valor");
  }else {
    print ("os valores são iguais");
  }


}