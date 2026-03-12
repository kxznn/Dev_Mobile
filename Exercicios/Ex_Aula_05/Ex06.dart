abstract class Automoveis {
  String nome;
  String cor;
  int ano;

  // Construtor
  Automoveis(this.nome, this.cor, this.ano);

  // Métodos abstratos
  void colocarCinto();
  void ligarCarro();
  void desligarCarro();
  void dirigir();
}