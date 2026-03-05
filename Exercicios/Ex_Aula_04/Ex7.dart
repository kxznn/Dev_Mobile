import 'dart:io';

class Carro {
  String marca;
  String modelo;
  int ano;
  bool motorLigado = false;

  Carro(this.marca, this.modelo, this.ano);

  void ligarMotor() {
    motorLigado = true;
    print("Motor está ligado.");
  }

  void desligarMotor() {
    motorLigado = false;
    print("Motor está desligado.");
  }

  String statusMotor() {
    if (motorLigado) {
      return "O motor está ligando.";
    } else {
      return "O motor está desligando.";
    }
  }
}

void main() {
  print("Digite a marca do carro:");
  String marca = stdin.readLineSync()!;

  print("Digite o modelo do carro:");
  String modelo = stdin.readLineSync()!;

  print("Digite o ano do carro:");
  int ano = int.parse(stdin.readLineSync()!);

  Carro carro = Carro(marca, modelo, ano);

  // Exibir os dados digitados
  print("\n "); 
  print("Marca: $marca" );
  print("Modelo: $modelo" );
  print("Ano: $ano" );

  print("\nStatus inicial: ${carro.statusMotor()}");

  carro.ligarMotor();
  print("Status após ligar: ${carro.statusMotor()}");

  carro.desligarMotor();
  print("Status após desligar: ${carro.statusMotor()}");
}