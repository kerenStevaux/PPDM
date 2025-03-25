import 'dart:io';
import 'exercicios/barrel.dart';
void exibirMenu(){
  while(true) {
  print('''
escolha uma das opções
  1-exibir Olá Dart
  2-calcular a área de um triangulo
  3-verificar se um numero é par ou impar 
  4-comparar 2 numeros 
  5-converter notas para conceito 
  6-exibir contagem progressiva 
  7-Somar todos os números até um valor especificado 
  8-Exibir a tabuada de um número 
  9-Sair do programa
  ''');
  int numero = int.parse(stdin.readLineSync()!);

  switch (numero) {
    case 1:
  olaDart();
    break;
    case 2:
  areaRetangulo();
  break;
  case 3:
  parImpar();
  break;
  case 4 :
  compararNumeros();
  break;
  case 5:
  notaConceito();
  break;
  case 6:
  contagemProgressiva();
 break;
  case 7 :
  somaNumero();
  break; 
  case 8:
  tabuadaAutomatica();
  break;
  case 9:
  print("Tchau, até a proxima");
  break;
  default: print("apenas numeros de 1 a 9");
  return;
  }
 }
}