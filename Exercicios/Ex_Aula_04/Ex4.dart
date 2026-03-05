// Exercicío 4 - Opções de tranferencia bancaria

import 'dart:io';

void saque(double valor) {
  print("Saque realizado no valor de: R\$ $valor");
}

void pix(double valor) {
  print("Pix realizado no valor de: R\$ $valor");
}

void emprestimo(double valor) {
  print("Empréstimo solicitado no valor de: R\$ $valor");
}

void transferencia(double valor) {
  print("Transferência realizada no valor de: R\$ $valor");
}

void main() {
  print("Selecione o tipo de transação");
  print("1 - Saque");
  print("2 - Pix");
  print("3 - Empréstimos");
  print("4 - Transferências");

  print("Escolha uma opção:");
  int opcao = int.parse(stdin.readLineSync()!);

  print("Digite o valor da transação:");
  double valor = double.parse(stdin.readLineSync()!);

  switch (opcao) {
    case 1:
      saque(valor);
      break;
    case 2:
      pix(valor);
      break;
    case 3:
      emprestimo(valor);
      break;
    case 4:
      transferencia(valor);
      break;
    default:
      print("Opção inválida.");
  }
}