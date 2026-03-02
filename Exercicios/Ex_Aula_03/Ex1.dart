// Exercicio 1 - String Nome, Curso, Idade 

import 'dart:io';

void main(){
    print('Digite seu nome:');
    String nome = stdin.readLineSync()!;
    print('Digite seu curso:');
    String curso = stdin.readLineSync()!;
    print('Digite sua idade:');
    int idade = int.parse(stdin.readLineSync()!);

    // tela das informações 
    print('Nome: $nome');
    print('Curso: $curso');
    print('Idade: $idade');
}

