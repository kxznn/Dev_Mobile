// Classe abstrata
abstract class MaquinaIndustrial {
  String nome;
  double potencia;
  bool status;

  MaquinaIndustrial(this.nome, this.potencia, this.status);

  void ligar();
  void desligar();
}

// Subclasse Prensa
class Prensa extends MaquinaIndustrial {
  double pressaoToneladas;

  Prensa(String nome, double potencia, bool status, this.pressaoToneladas)
      : super(nome, potencia, status);

  @override
  void ligar() {
    status = true;
    print("A prensa $nome foi ligada com pressão de $pressaoToneladas toneladas.");
  }

  @override
  void desligar() {
    status = false;
    print("A prensa $nome foi desligada.");
  }
}

// Subclasse Robô de Solda
class RoboSolda extends MaquinaIndustrial {
  String tipoSolda;

  RoboSolda(String nome, double potencia, bool status, this.tipoSolda)
      : super(nome, potencia, status);

  @override
  void ligar() {
    status = true;
    print("O robô de solda $nome foi ligado para realizar solda do tipo $tipoSolda.");
  }

  @override
  void desligar() {
    status = false;
    print("O robô de solda $nome foi desligado.");
  }
}

void main() {
  Prensa prensa = Prensa("Prensa Hidráulica", 2000, false, 50);
  RoboSolda robo = RoboSolda("RoboSolda X1", 1500, false, "MIG");

  prensa.ligar();
  prensa.desligar();

  robo.ligar();
  robo.desligar();
}