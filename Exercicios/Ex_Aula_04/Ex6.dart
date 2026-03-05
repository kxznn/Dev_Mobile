class CarrinhoDeCompras {
  List<String> itens = [];
  List<int> quantidades = [];
  List<double> precos = [];

  void adicionarItem(String item, int quantidade, double preco) {
    itens.add(item);
    quantidades.add(quantidade);
    precos.add(preco);
  }

  void removerItem(String item) {
    int index = itens.indexOf(item);
    if (index != -1) {
      itens.removeAt(index);
      quantidades.removeAt(index);
      precos.removeAt(index);
    }
  }

  double calcularTotal() {
    double total = 0;
    for (int i = 0; i < itens.length; i++) {
      total += quantidades[i] * precos[i];
    }
    return total;
  }
}

void main() {
  CarrinhoDeCompras carrinho = CarrinhoDeCompras();

  carrinho.adicionarItem("Camiseta", 3, 50.0);
  carrinho.adicionarItem("Tênis", 1, 200.0);
  carrinho.adicionarItem("Celular", 1, 3000.0);

  print("Total do carrinho: R\$ ${carrinho.calcularTotal()}");

  carrinho.removerItem("Camiseta");

  print("Total após remover item: R\$ ${carrinho.calcularTotal()}");
}