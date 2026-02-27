import 'dart:io';

void main (){
  print("Digite seu nome");
  String nome = stdin.readLineSync()!;
  print("Digite sua idade");
  // variavel do ipo inteira 
  // stdin.readLineSync pega valores como String 
  int idade = int.parse(stdin.readLineSync()!);

  if(idade>=18){
    print("Maior de idade");
  }
  else {
    print('Menor de idade');
  }

  print(" Nome: $nome e Idade: $idade anos");
}