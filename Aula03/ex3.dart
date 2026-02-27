// Exemplo 3 - Digitar dois numeros e calcular sua média 

import 'dart:io';

void main (){
  double n1,n2,res; // declara 4 variáveis do tipo double
  print("Digite sua nota(N1)");
  n1 = double.parse(stdin.readLineSync()!);
  print("Digite sua nota (N2)");
  n2 = double.parse(stdin.readLineSync()!);
  res = (n1 + n2) / 2;
  print( " Nora 1: $n1");
  print( " Nota 2: $n2");
  print( " Média: $res ");
  if(res>=6) {
    print("Parabéns ! Foi Aprovado");
  }
  else {
    print("Reprovado!");
  }
}