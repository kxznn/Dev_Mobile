// Exercício 1 - receber informações do usuário pelo teclado

import 'dart:io';

class Dados {
  String? nome;
  String? curso;
  String? idade;
  void cadastro_dados() {
    print('Digite seu nome:');
    nome = stdin.readLineSync()!;

    print('Digite o seu curso atual:');
    curso = stdin.readLineSync()!;

    print('Digite sua idade:');
    idade = stdin.readLineSync()!;
  }

  void exibir_dados() {
    print('Nome: $nome');
    print('Curso: $curso');
    print('Idade: $idade');
  }
}

void main() {
  Dados dados = Dados();
  dados.cadastro_dados();
  dados.exibir_dados();
}