import 'dart:io';

void notaConceito () {
  print("digite um valor de 1 á 100");
  int valor = int.parse(stdin.readLineSync()!);

  if (valor >= 90 && valor <= 100){
  print ("A");
  } else if (valor >= 80 && valor <= 89) {
    print("B");
  } else if (valor >= 70 && valor <= 79) {
    print("C");
  } else if (valor >= 60 && valor <= 69) {
    print("D");
  } else {
    print("F");
 
}
}