// Exercicío 4 - Calculo do Salário

import 'dart:io';

double calculoSalario(double salario) {
  double imposto = salario * 0.10;
  double bonus = salario * 0.20;
  double S_final = salario - imposto + bonus;
  return S_final;
}

void main() {
  print("Digite o salário base:");
  double salario = double.parse(stdin.readLineSync()!);

  double S_final = calculoSalario(salario);

  print("Salário final após imposto e bonificação: $S_final");
}
