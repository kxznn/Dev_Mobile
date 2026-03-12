abstract class MaquinaIndustrial {
  String nome;
  double potencia;
  bool status;

  // Construtor
  MaquinaIndustrial(this.nome, this.potencia, this.status);

  // Métodos abstratos
  void ligar();
  void desligar();
}

class Esteira extends MaquinaIndustrial {

  Esteira(String nome, double potencia, bool status)
      : super(nome, potencia, status);

  @override
  void ligar() {
    status = true;
    print("$nome foi ligada.");
  }

  @override
  void desligar() {
    status = false;
    print("$nome foi desligada.");
  }
}

void main() {
  Esteira maquina = Esteira("Esteira Industrial", 1500, false);

  maquina.ligar();
  maquina.desligar();
}