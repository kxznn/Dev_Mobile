// Exercicío 3 - Calclo do salário liquido

import 'dart:io';

void main (){
  double bruto, imposto, bonificacao, liquido;
  print("Digite o valor do seu salário:");
  bruto = double.parse(stdin.readLineSync()!);

  imposto = bruto *0.10;
  bonificacao = bruto *0.20;
  liquido = bruto + bonificacao - imposto;
  
  print("Salário Bruto: $bruto");
  print("Salário com imposto(10%): $imposto");
  print("Salário com bonificação(20%): $bonificacao");
  print("Salário Liquido ( final ): $liquido");
}