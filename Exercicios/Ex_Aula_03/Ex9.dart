// Exercicío 9 - Preço por kWh
import 'dart:io';

void main() {
  double kwh, preco_uni, valor_T;
  
  print('Digite a quantidade de kWh consumido:');
  kwh = double.parse(stdin.readLineSync()!);
  print('Tipo de instalação: \n Residencial \n Comercial \n Industrial');
  String tipo = stdin.readLineSync()!.trim().toUpperCase();
  
  preco_uni = 0;

  if (tipo == 'RESIDENCIAL') {
    if (kwh <= 500) {
      preco_uni = 0.50;
    } else {
      preco_uni = 0.70;
    }
  } else if (tipo == 'COMERCIAL') {
    if (kwh <= 1000) {
      preco_uni = 0.65;
    } else {
      preco_uni = 0.60;
    }
  } else if (tipo == 'INDUSTRIAL') {
    if (kwh <= 5000) {
      preco_uni = 0.55;
    } else {
      preco_uni = 0.50;
    }
  } else {
    print('Erro: Tipo de instalação inválido.');
    return; 
  }

  valor_T = kwh * preco_uni;

  print("Tipo de instalação escolhido: $tipo");
  print("Preço por kWh: $kwh");
  print("Total do valor: $valor_T");
}
