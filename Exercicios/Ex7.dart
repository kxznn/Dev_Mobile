// Exercicío 7 - Comparaçao de preço entre carros 

import 'dart:io';

void main () {
  double c1,c2,c3;

  print('Digite o valor do Carro 1:');
  c1 = double.parse(stdin.readLineSync()!);
  print('Digite o valor do Carro 2:');
  c2 = double.parse(stdin.readLineSync()!);
  print('Digite o valor do Carro 3:');
  c3 = double.parse(stdin.readLineSync()!);
  
  double maior_valor = c1;
  double menor_valor = c1;

  if ( c2 > maior_valor){
    maior_valor = c2;
  }
  if ( c3 > maior_valor){
    maior_valor = c3;
  }
  if ( c2 < menor_valor){
    menor_valor = c2;
  }
  if ( c3 < menor_valor){
    menor_valor = c3;
  }

  print("O carro no maior valor é de $maior_valor ");
  print("O carro no menor valor é de $menor_valor ");
}