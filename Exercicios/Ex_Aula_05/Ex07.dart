abstract class Automoveis {
  String nome;
  String cor;
  int ano;

  Automoveis(this.nome, this.cor, this.ano);

  // Métodos abstratos
  void colocarCinto();
  void ligarCarro();
  void desligarCarro();
  void dirigir();
}

// Classe concreta Carro
class Carro extends Automoveis {
  bool cintoColocado = false;
  bool ligado = false;

  Carro(String nome, String cor, int ano) : super(nome, cor, ano);

  @override
  void colocarCinto() {
    cintoColocado = true;
    print("Cinto colocado no carro $nome.");
  }

  @override
  void ligarCarro() {
    if (!cintoColocado) {
      print("Não é possível ligar $nome. Coloque o cinto primeiro!");
    } else {
      ligado = true;
      print("O carro $nome está ligado.");
    }
  }

  @override
  void desligarCarro() {
    ligado = false;
    print("O carro $nome foi desligado.");
  }

  @override
  void dirigir() {
    if (!ligado) {
      print("Não é possível dirigir $nome. O carro está desligado!");
    } else {
      print("Você está dirigindo o carro $nome.");
    }
  }

  void mostrarInformacoes() {
    print("=== Informações do Carro ===");
    print("Nome: $nome");
    print("Cor: $cor");
    print("Ano: $ano");
    print("Cinto colocado: $cintoColocado");
    print("Ligado: $ligado");
  }
}

// Exemplo de uso
void main() {
  Carro meuCarro = Carro("Civic", "Preto", 2022);

  meuCarro.mostrarInformacoes();
  meuCarro.ligarCarro();       // Tenta ligar sem cinto
  meuCarro.colocarCinto();     // Coloca o cinto
  meuCarro.ligarCarro();       // Agora liga
  meuCarro.dirigir();          // Dirige o carro
  meuCarro.desligarCarro();    // Desliga o carro
}