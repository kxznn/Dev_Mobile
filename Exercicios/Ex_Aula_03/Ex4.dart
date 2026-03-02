// Exercicío 4 - COnverçao de moedas ( ex. Real para Dolár )

import 'dart:io';

void main() {
  double real, res;
  var op;
  var msg;

  do {
    print("Converções:");
    print('Euro (EUR)');
    print('Dolar (USD)');
    print('Franco suico (CHF)');
    print('Digite o valor em real que deseja converter:');
    real = double.parse(stdin.readLineSync()!);
    print('Escolha uma das moedas :');
    op = stdin.readLineSync()?.toLowerCase().trim();

    switch (op) {
      case 'Euro':
        res = real / 7;
        print('Valor convertido em Euro: $res EUR');
        break;

      case 'Dolar':
        res = real / 6.56;
        print('Valor convertido em Dolár: $res USD');
        break;

      case 'Franco suico':
        res = real / 4.35;
        print('Valor convertido em Franco Suiço: $res CHF');
        break;
    }
    print('Deseja?');
    msg = stdin.readLineSync();
  } while (msg == 's' || msg == 'S' || msg == 'sim');
  print('COnverção finalizada...');
}
