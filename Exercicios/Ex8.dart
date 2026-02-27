// Exercicío 8 - Descontos variados ( Combustível )

import 'dart:io';

void main() {
  double litros, desconto_T, valor_T;

  print('Digite a quentidade de litros comprada');
  litros = double.parse(stdin.readLineSync()!);
  print(
    'Escolha qual o combustivel de combustível: \n Etanol \n Diesel \n Gasolina',
  );
  String combustivel = stdin.readLineSync()!;

  double precoLitro = 0;
  double Desconto = 0;

  if (combustivel == 'Etanol') {
    precoLitro = 1.70;
    if (litros >= 15) {
      Desconto = 0.04;
    } else {
      Desconto = 0.03;
    }
  } else if (combustivel == 'Diesel') {
    precoLitro = 2.00;
    if (litros >= 15) {
      Desconto = 0.05;
    } else {
      Desconto = 0.03;
    }
  } else if (combustivel == 'Gasolina') {
    precoLitro = 4.50;
    if (litros >= 20) {
      Desconto = 0.03;
    } else {
      Desconto = 0.00;
    }
  } else {
    print('Erro: Desconto de combustível inválido.');
    return;
  }

  desconto_T = precoLitro * litros * Desconto;
  valor_T = (precoLitro * litros) - desconto_T;

  print('Valor do desconto: R\$ $desconto_T');
  print('Valor total a pagar: R\$ $valor_T');
}
