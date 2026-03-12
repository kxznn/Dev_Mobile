class Pessoa {
  String _nome = "";
  int _idade = 0;

  // Getter para nome
  String get nome => _nome;

  // Setter para nome com validação
  set nome(String valor) {
    if (valor.isNotEmpty) {
      _nome = valor;
    } else {
      print("Nome inválido.");
    }
  }

  // Getter para idade
  int get idade => _idade;

  // Setter para idade com validação
  set idade(int valor) {
    if (valor >= 0 && valor <= 120) {
      _idade = valor;
    } else {
      print("Idade inválida.");
    }
  }

  // Método para mostrar informações
  void mostrarInformacoes() {
    print("Nome: $_nome");
    print("Idade: $_idade");
  }
}

void main() {
  Pessoa p = Pessoa();

  p.nome = "Carlos";
  p.idade = 30;

  p.mostrarInformacoes();
}