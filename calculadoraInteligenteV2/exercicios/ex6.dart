import 'dart:io';

void contagemProgressiva (){
print("digite um numero inteiro");
int numero = int.parse(stdin.readLineSync()!);

for( int i = 1; i <= numero; i++ ) {
  print(i);
}
}