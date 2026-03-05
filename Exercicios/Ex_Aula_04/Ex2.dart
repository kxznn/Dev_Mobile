// Exercicío 2 - Calculo do triangulo

import 'dart:io';

double calcularAreaTriangulo(double base, double altura) {
  double area = (base * altura) / 2;
  return area;
}

void main (){
  print('Digite o valor da base:');
  double base = double.parse(stdin.readLineSync()!);
  print('Digite o valor da altura:');
  double altura = double.parse(stdin.readLineSync()!);

  double area = calcularAreaTriangulo(base, altura);

  print('A área do Tringulo é: $area');
}