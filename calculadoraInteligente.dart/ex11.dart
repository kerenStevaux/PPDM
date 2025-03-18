import 'dart:io';

void main() {
  String escolha = ''; {
    print('1 - Olá, Dart!');
    print('2 - Área do retângulo');
    print('3 - Par ou ímpar');
    print('4 - Comparar números');
    print('5 - Nota para conceito');
    print('6 - Contagem progressiva');
    print('7 - Soma até número');
    print('8 - Tabuada');
    print('9 - Sair');
    stdout.write('Escolha: ');
    escolha = stdin.readLineSync()!;

    switch (escolha) {
      case '1':
        print('Olá, Dart!');
        break;
      case '2':
        stdout.write('Largura: ');
        double l = double.parse(stdin.readLineSync()!);
        stdout.write('Comprimento: ');
        double c = double.parse(stdin.readLineSync()!);
        print('Área: ${l * c}');
        break;
      case '3':
        stdout.write('Número: ');
        int n = int.parse(stdin.readLineSync()!);
        print(n % 2 == 0 ? 'Par' : 'Ímpar');
        break;
      case '4':
        stdout.write('Número 1: ');
        int n1 = int.parse(stdin.readLineSync()!);
        stdout.write('Número 2: ');
        int n2 = int.parse(stdin.readLineSync()!);
        print(n1 > n2 ? '$n1 > $n2' : (n1 < n2 ? '$n1 < $n2' : 'Iguais'));
        break;
      case '5':
        stdout.write('Nota: ');
        double nota = double.parse(stdin.readLineSync()!);
        print(nota >= 9 ? 'A' : nota >= 7 ? 'B' : nota >= 5 ? 'C' : nota >= 3 ? 'D' : 'F');
        break;
      case '6':
        stdout.write('Limite: ');
        int lim = int.parse(stdin.readLineSync()!);
        for (int i = 1; i <= lim; i++) print(i);
        break;
      case '7':
        stdout.write('Número: ');
        int lim = int.parse(stdin.readLineSync()!);
        print('Soma: ${List.generate(lim, (i) => i + 1).reduce((a, b) => a + b)}');
        break;
      case '8':
        stdout.write('Número: ');
        int num = int.parse(stdin.readLineSync()!);
        for (int i = 1; i <= 10; i++) print('$num x $i = ${num * i}');
        break;
      case '9':
        print('Saindo...');
        break;
      default:
        print('Opção inválida.');
    }
  } while (escolha != '9');
}
