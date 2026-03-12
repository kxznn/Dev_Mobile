
// Classe abstrata
abstract class Automoveis {
  String nome;
  String cor;
  int ano;

  Automoveis(this.nome, this.cor, this.ano);
}

// Classe Carro herdando de Automoveis
class Carro extends Automoveis {

  Carro(String nome, String cor, int ano) : super(nome, cor, ano);

  void mostrarInformacoes() {
    print("Nome: $nome");
    print("Cor: $cor");
    print("Ano: $ano");
  }
}