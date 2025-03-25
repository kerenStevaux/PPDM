import 'dart:io';

void areaRetangulo () {
  print("digite a altura");
  double altura = double.parse(stdin.readLineSync()!);

  print("digite a largura");
  double largura = double.parse(stdin.readLineSync()!);

double area = largura*altura;
  print("sua area é $area");
}