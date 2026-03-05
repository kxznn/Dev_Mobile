// Exercicío 5 - Converção de moedas ($)

import 'dart:io';

double converterEuro(double valor) {
  double taxa = 0.18; // exemplo de taxa
  return valor * taxa;
}

double converterDolar(double valor) {
  double taxa = 0.20; // exemplo de taxa
  return valor * taxa;
}

double converterFranco(double valor) {
  double taxa = 0.19; // exemplo de taxa
  return valor * taxa;
}

void main() {
  print("Digite o valor em Real: R\$:");
  double valor = double.parse(stdin.readLineSync()!);

  print("Escolha a moeda para conversão:");
  print("1 - Euro");
  print("2 - Dólar");
  print("3 - Franco Suíço");

  int opcao = int.parse(stdin.readLineSync()!);

  switch (opcao) {
    case 1:
      print("Valor em Euro: ${converterEuro(valor)}");
      break;
    case 2:
      print("Valor em Dólar: ${converterDolar(valor)}");
      break;
    case 3:
      print("Valor em Franco Suíço: ${converterFranco(valor)}");
      break;
    default:
      print("Opção inválida");
  }
}