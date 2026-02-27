// Exercicío 6 - Idade mais velho 

import 'dart:io';

void main () {
  double idade1, idade2;
  print('Digie a primeira idade: ');
  idade1 = double.parse(stdin.readLineSync()!);
  print( 'Digie a segunda idade');
  idade2 = double.parse(stdin.readLineSync()!);

  if (idade1>idade2) {
    print ('$idade1 é mais velha que a $idade2');
  } else if (idade2 > idade1) {
    print('$idade2 é mais velha que a $idade1');
  } else {
    print('Ambos tem a mesma idade');
  }
}