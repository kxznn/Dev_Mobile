// Exercícios 2 - Calculo da area de um triângulo - A = (b*h) / 2

import "dart:io";

void main () {
  double b, h, A;
  print( "Digite o valor da base(b) de seu triângulo:");
  b = double.parse(stdin.readLineSync()!);
  print("Digite o valor da altura(h) de seu triângulo:");
  h = double.parse(stdin.readLineSync()!);

  // calculo da area do triangulo
  A = (b*h) / 2;
  print("Valor (b): $b");
  print("Valor (h): $h");
  print("Área do Triângulo: $A");

}